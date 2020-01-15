cask 'omnioutliner' do
  if MacOS.version <= :high_sierra
    version '5.4.2(n)'
    sha256 'a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395'

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version '5.5.2'
    sha256 'd48e2cc5ae8da2baa61939393569330a7fc715d52583f1410ee958fc3d276951'

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
