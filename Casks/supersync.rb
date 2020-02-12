cask 'supersync' do
  version '7.0.6'
  sha256 '95a9ad2d2e9571c28cec289162ef8ffb2d81c82c8107be9b7895e117ee9f1767'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
