cask :v1 => 'asteroid' do
  version '0.9.7'
  sha256 'a4e5de12093ccf5fee7a0515504d758cbe7c721db36695dd467d60a3ed6a2f16'

  url "http://www.asteroidapp.com/downloader.php?Ver=#{version}"
  appcast 'http://www.asteroidapp.com/appupdates.php'
  name 'Asteroid'
  homepage 'http://www.asteroidapp.com/'
  license :gpl

  app 'Asteroid.app'
end
