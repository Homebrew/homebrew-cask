cask 'omnioutliner' do
  version '4.6'
  sha256 'e5f4e589a2c1a3f1cb1e3059a763f063f73cdd591b01d312ee4f9b01188ceb61'

  url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
