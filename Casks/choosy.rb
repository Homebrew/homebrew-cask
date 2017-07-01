cask 'choosy' do
  version '1.2'
  sha256 '17e36cff2321d7626402b3e9bceb04feb02dbe981c22b2de7b97c161d141ed98'

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed',
          checkpoint: '2537fbe06e3763105b4081854bb7a86c61b27d9fc07fd3065afed61bfcc60f47'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  prefpane 'Choosy.prefPane'
end
