cask :v1 => 'asteroid' do
  version :latest
  sha256 :no_check

  url 'http://www.asteroidapp.com/downloader.php?Ver=latest'
  appcast 'http://www.asteroidapp.com/appupdates.php'
  homepage 'http://www.asteroidapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Asteroid.app'
end
