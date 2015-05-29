cask :v1 => 'omnioutliner' do
  version '4.2.3'
  sha256 '023ee03e68a1e9ee64dd6f6548ab6164e0a6ad82c205de5c4c02c56da40d019c'

  url "http://downloads2.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end
