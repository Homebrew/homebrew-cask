cask 'omnioutliner' do
  version '4.5'
  sha256 '87730489d83d4fe3976740f96b9d927437cb158359b276bb82adb93da91e116e'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
