cask 'rubitrack-pro' do
  version '5.2.9'
  sha256 'eae8181eda9ab887e329cdeee1f795b08ed6fb8b2e69b114985e3a02e73782ad'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
