cask 'photosweeper-x' do
  version '3.4.3'
  sha256 '331acd6799fbd81ddcfba762a6826d87ad50e625d6b539f12c5948e790dd38a0'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  depends_on macos: '>= :sierra'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
