cask 'photosweeper-x' do
  version '3.4.2'
  sha256 '7320db1cc9b28c2696a45410d42e1529b9297481885ab9e841e386d73a6e25af'

  url 'https://overmacs.com/photosweeper/downloads/PhotoSweeperTrial.dmg'
  appcast 'https://overmacs.com/photosweeper/updates/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
