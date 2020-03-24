cask 'sherlock' do
  version '1.7.4'
  sha256 '2eb61363bbd22ccbbf93f188a33fcc897a16311b9112b84563c7217bf6cbd958'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib2ede6f06e.azureedge.net/10761dd5-e291-4944-a4f6-40411ad796c9/Sherlock_1.7.4.dmg?sv=2018-03-28&sr=c&sig=jvpVUPPMTbmSRYGgl0JNAL0mG6TLn5BmKGxTMyz8nNY%3D&se=2020-03-14T11%3A05%3A24Z&sp=r'
  appcast 'http://sparkle.sherlock.inspiredcode.io'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
