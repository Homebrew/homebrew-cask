cask 'photosweeper-x' do
  version '3.3.1'
  sha256 'd89af6358d3547103ea7cbc65f3beec50dafeb32e35c1fdaf436e14c2234f5d1'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
