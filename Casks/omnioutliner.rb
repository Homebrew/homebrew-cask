cask 'omnioutliner' do
  version '5.0.1'
  sha256 '6b9e85db62565e804562701b16dfa30e51469d54e6c8faacb7dd1aee6b293c95'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
