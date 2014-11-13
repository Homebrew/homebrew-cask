cask :v1 => 'sickbeard-anime' do
  version '13.05.25'
  sha256 '402d6eb6df5d0c75f190cfe23e0d59cacaa857f94a902f2728fb20cae64d2f36'

  url "http://sickbeard.lad1337.de/download.php?f=SickBeard-OSX-anime-#{version}.dmg"
  homepage 'http://sickbeard.lad1337.de/'
  license :unknown

  app 'SickBeard.app'
end
