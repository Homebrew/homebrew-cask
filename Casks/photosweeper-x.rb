cask 'photosweeper-x' do
  version '3.6.1'
  sha256 '96f7fb8d6a610aa194c4639d37406ccc001e0f03a9a423b5aef18963cd38a481'

  url 'https://overmacs.com/downloads/PhotoSweeper_X.dmg'
  appcast 'https://overmacs.com/feeds/photosweeper_update.xml'
  name 'PhotoSweeper X'
  homepage 'https://overmacs.com/'

  depends_on macos: '>= :sierra'

  app 'PhotoSweeper X.app'

  zap trash: '~/Library/Preferences/com.overmacs.photosweeperpaddle.plist'
end
