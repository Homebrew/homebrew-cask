cask 'omnioutliner' do
  version '5.3.3'
  sha256 'bf656fbf46f61c18881146430c64cf2f6d170f53b3d32ab2576b58237c68e6d7'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :sierra'

  app 'OmniOutliner.app'
end
