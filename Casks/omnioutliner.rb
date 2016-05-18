cask 'omnioutliner' do
  version '4.5.2'
  sha256 '3e17b59171a3a75ee8f4dcf412c7001e0ffdcfefffeec5b613749a9113216b7f'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
