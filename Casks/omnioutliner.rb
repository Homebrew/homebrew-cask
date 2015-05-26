cask :v1 => 'omnioutliner' do
  version '4.2.2'
  sha256 '22b30eb4964caaa7be8e6a279ded2eae78f6f2e8db40b812f0b17e27597c9e85'

  url "http://downloads2.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
