cask 'photosweeper-x' do
  version '3.6.2'
  sha256 '26ff5e2e346e6d8c3b3e31868713d1018192021eb693680ef524cf33ab44ca4e'

  url 'https://overmacs.com/downloads/PhotoSweeper_X.dmg'
  appcast 'https://overmacs.com/feeds/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  depends_on macos: '>= :sierra'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
