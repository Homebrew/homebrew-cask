cask 'photosweeper-x' do
  version '3.2.2'
  sha256 'e91d99749bdcda301f8f8c96262afc7c6867b090cdcc059bc59f6b768d292083'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
