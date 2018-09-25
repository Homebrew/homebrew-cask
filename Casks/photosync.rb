cask 'photosync' do
  version '3.3'
  sha256 '83c068387fabc3b6d59d693231b7975ff5365103eb01a9d8ab0f1d7c43be8b06'

  url "https://www.photosync-app.com/tl_files/photosync/publish/mac/photosync_#{version.dots_to_underscores}.dmg"
  appcast 'https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml'
  name 'PhotoSync Companion for macOS'
  homepage 'https://www.photosync-app.com/photosync/en/home.html'

  app 'PhotoSync.app'
end
