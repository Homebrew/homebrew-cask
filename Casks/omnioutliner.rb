cask 'omnioutliner' do
  version '5.4.2'
  sha256 '5328cdae5e218a64a1b3542146659a62e0e332eeb0c3ec4ce0c483302aacf188'

  url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :high_sierra'

  app 'OmniOutliner.app'
end
