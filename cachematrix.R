## Caching the inverse of a matrix
makeVector <- function(x = numeric()) {
  ## assigned the cached value
  inv <- NULL
  ## assign NULL to inv
  set <- function(y) {
    ## set the value to the vector
    x <<- y
    inv <<- NULL
  }
  get <- function() x
    ## get the value to the vector
  setInverse <- function(inverse) inv <<- inverse
    ## set the value of the inverse
  getInverse <- function() inv
    ## get the value of the inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## computes the inverse of the matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }a
  data <- x$get()
  inv <- solve(data, ...)
  ## returns its inverser
  x$setInverse(inv)
  inv
}
a<-diag(5,3)

## example: a<-diag(5,3)
## result
