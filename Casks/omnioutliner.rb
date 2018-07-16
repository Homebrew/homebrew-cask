cask 'omnioutliner' do
  version '5.3.2'
  sha256 '26370aba11170ee9e36531031ea45bf2f672fb061f3bf9d29522f68974eab89c'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :sierra'

  app 'OmniOutliner.app'
end
