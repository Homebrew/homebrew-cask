cask 'omnioutliner' do
  version '5.4.1'
  sha256 '2f7147aa867ae2ba768ecdef58cc085df64216e123f836c7653d627426d6ffcd'

  url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :high_sierra'

  app 'OmniOutliner.app'
end
