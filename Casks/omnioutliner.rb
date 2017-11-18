cask 'omnioutliner' do
  version '5.2'
  sha256 '7d009220ce74570235e25d3c3855c804dec13a6d1e678ffd4e243bb9788938ac'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '9966a34bf39bb4d5d2aaebdf38953a8b63fbf851ede9a2cd3f70370b87585322'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
