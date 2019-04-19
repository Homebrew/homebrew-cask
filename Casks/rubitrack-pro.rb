cask 'rubitrack-pro' do
  version '5.2.3'
  sha256 '1fba18c814d35b9475239b3092a2cecfeffb9022fd1df1addce0b1277306d33a'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
