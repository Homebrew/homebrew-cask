cask 'omnioutliner' do
  version '5.2'
  sha256 '7d009220ce74570235e25d3c3855c804dec13a6d1e678ffd4e243bb9788938ac'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '2ecf4e7b9111151f69d363e21d4e3b48bb3e5eb6a656a445eabb09cc525952de'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
