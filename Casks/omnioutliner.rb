cask 'omnioutliner' do
  version '5.0.3'
  sha256 'e0d9e543b457efc059eba9875729ddd9196cd1c9edfc1092118ce38a0e2c4c0d'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
