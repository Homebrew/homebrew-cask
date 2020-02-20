cask 'rubitrack-pro' do
  version '5.3.1'
  sha256 'af53b5047ce9fcc47b9bd0316b58f35a96b8a0635c2db4b02e54fa7b014edfae'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
