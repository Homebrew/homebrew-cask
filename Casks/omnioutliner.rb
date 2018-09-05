cask 'omnioutliner' do
  version '5.3.4'
  sha256 'dd329a070980ae6fe1aa9c55d398a2ab5b6192082455e7eb3526a9fccb3eaf42'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :sierra'

  app 'OmniOutliner.app'
end
