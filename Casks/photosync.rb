cask 'photosync' do
  version '3.2.4'
  sha256 'da491ac3b2de9ae526075d43074af20f5586359271cedfdfc047beb689184f18'

  url "https://www.photosync-app.com/tl_files/photosync/publish/mac/photosync_#{version.dots_to_underscores}.dmg"
  appcast 'https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml'
  name 'PhotoSync Companion for macOS'
  homepage 'https://www.photosync-app.com/photosync/en/home.html'

  app 'PhotoSync.app'
end
