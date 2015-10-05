cask :v1 => 'omnioutliner' do
  version '4.3'
  sha256 '8941d9738c3377f4f57f097ff5bf24faa133bd0bf25498d919db751487153357'

  url "http://downloads2.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
