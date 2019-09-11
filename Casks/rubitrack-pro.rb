cask 'rubitrack-pro' do
  version '5.2.7'
  sha256 '066e403389cbe044d6619b844b169971b1db2c94c5055a361b01a3fb6ce87787'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
