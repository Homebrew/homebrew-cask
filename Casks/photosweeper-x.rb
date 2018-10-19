cask 'photosweeper-x' do
  version '3.3.0'
  sha256 '5026920570d7a3dd0cea6b78adf4984fe2242938003e08f13910c2c2bf4b188d'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
