cask 'omnioutliner' do
  version '5.1.4'
  sha256 '91817e87a29c6a86f64b22f36e292b354aab89f63a070eeab117f4fbb2704ff0'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '9966a34bf39bb4d5d2aaebdf38953a8b63fbf851ede9a2cd3f70370b87585322'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
