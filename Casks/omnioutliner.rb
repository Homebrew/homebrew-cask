cask 'omnioutliner' do
  version '5.4'
  sha256 '82352cafad03c2b269fc665186c3b4e5a9271e69716686c0132580464976fec5'

  url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :high_sierra'

  app 'OmniOutliner.app'
end
