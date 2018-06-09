cask 'omnioutliner' do
  version '5.3.1'
  sha256 'b307f8e735486c03b6f77099da78c73a51be1f87c7e730161880a7139cb5f376'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: 'c7f3d91a1a4e5640d2ed5e4ec26a15f4cecbefc4095a0514aa744df09dea21c9'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :sierra'

  app 'OmniOutliner.app'
end
