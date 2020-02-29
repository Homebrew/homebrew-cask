cask 'omnioutliner' do
  if MacOS.version <= :high_sierra
    version '5.4.2(n)'
    sha256 'a9364dcf2ee97a871a881530785fa54d269f5e95298e2e4d2e979c70b6365395'

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  else
    version '5.5.3'
    sha256 '589e6c7b027c292f9fe128997929f0c07d7260cf55008d26bda963978d824770'

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  end
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
