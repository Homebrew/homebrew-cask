cask 'omnioutliner' do
  version '5.5'
  sha256 '19a552e1a8f92cbb598044c27dd358bd51e77aebf8fdbd3b9a7ece3690a2d89f'

  url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :mojave'

  app 'OmniOutliner.app'
end
