cask 'omnioutliner' do
  version '5.1.1'
  sha256 '8df460567efca3e071257e4c45d13b9773d3451f036ae78ca9b8d7d15f796474'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '5c8fe90134382f8d91e67f54f2e50c44d8e7261718dcecfbdd65f20a6febcd7b'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
