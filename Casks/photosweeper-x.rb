cask 'photosweeper-x' do
  version '3.7.0'
  sha256 '6a4fa5e1f6ac90930a7a2f71fd72aca5808be9a374aad63f0e189651d226c5a9'

  url 'https://overmacs.com/downloads/PhotoSweeper_X.dmg'
  appcast 'https://overmacs.com/feeds/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  depends_on macos: '>= :sierra'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
