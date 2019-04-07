cask 'rubitrack-pro' do
  version '5.2.1'
  sha256 'd09b3090c39cc5e2b4e16086b8480d049f34259e43cb0076be11e79b51b8cf8e'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
