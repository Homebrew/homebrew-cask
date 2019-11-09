cask 'omnioutliner' do
  version '5.4.2(n)'
  sha256 'a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395'

  url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :high_sierra'

  app 'OmniOutliner.app'
end
