cask 'photosync' do
  version '3.3.1'
  sha256 '7c3238c45bb4ef46c5055f60b64394f8cbe78759b0bf1e18dd968dcf8c317392'

  url "https://www.photosync-app.com/tl_files/photosync/publish/mac/photosync_#{version.dots_to_underscores}.dmg"
  appcast 'https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml'
  name 'PhotoSync Companion'
  homepage 'https://www.photosync-app.com/photosync/en/home.html'

  app 'PhotoSync.app'
end
