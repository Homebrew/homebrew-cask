cask 'supersync' do
  version '7.0'
  sha256 '9f88bdf6db4fd7f88d7c5796252422f8d5bc93ef4b6bd6a8e8eb441d2a9d9a6d'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast 'https://supersync.com/downloads.php'
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
