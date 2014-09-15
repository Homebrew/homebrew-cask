class Asteroid < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.asteroidapp.com/downloader.php?Ver=latest'
  appcast 'http://www.asteroidapp.com/appupdates.php'
  homepage 'http://www.asteroidapp.com/'

  app 'Asteroid.app'
end
