cask 'omnioutliner' do
  version '4.6.1'
  sha256 '47652e8b46be40a5fc71eff16d7b621fa99bc07951f11f5445cacea5ee15ff2a'

  url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
