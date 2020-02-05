cask 'supersync' do
  version '7.0.4'
  sha256 '5fa35c694f83519a9760090f960cf8ac464d1e08ec798c56caa25b8ba63b09fd'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
