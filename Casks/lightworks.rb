cask 'lightworks' do
  version '14.5.0'
  sha256 '8b7d5890f7c0f2ede05d4de16a7a09e5bfc5b322690e70cbd2e481e3638e738c'

  url "https://downloads.lwks.com/v#{version.major_minor.dots_to_hyphens}-new/lightworks_v#{version}.dmg"
  appcast 'https://www.lwks.com/index.php?option=com_lwks&view=download&Itemid=206&tab=2',
          configuration: version.major_minor
  name 'Lightworks'
  homepage 'https://www.lwks.com/'

  app 'Lightworks.app'

  zap trash: '~/Library/Saved Application State/com.editshare.lightworks.savedState'
end
