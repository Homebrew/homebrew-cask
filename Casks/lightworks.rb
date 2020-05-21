cask 'lightworks' do
  version '2020.1_r122068'
  sha256 'c55738a83be001b2d020af7d77629791838c044428a7e74ca2260735023757a9'

  url "https://cdn.lwks.com/releases/lightworks_#{version}.dmg"
  appcast 'https://www.lwks.com/index.php?option=com_lwks&view=download&Itemid=206&tab=2'
  name 'Lightworks'
  homepage 'https://www.lwks.com/'

  app 'Lightworks.app'

  zap trash: '~/Library/Saved Application State/com.editshare.lightworks.savedState'
end
