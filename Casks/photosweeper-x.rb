cask 'photosweeper-x' do
  version '3.4.1'
  sha256 '92ec97ad68f26b7dadd60f45d8a7f5c59c5b9bae7cef04f5dd486025021f9ab4'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  depends_on macos: '>= :sierra'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
