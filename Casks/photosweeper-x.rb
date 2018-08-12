cask 'photosweeper-x' do
  version '3.2.4'
  sha256 'e0b3bb40178066b6d333a3f87c6ba853819e98aba7d1419d0529c981e16ef03c'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
