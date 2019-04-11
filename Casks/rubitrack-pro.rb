cask 'rubitrack-pro' do
  version '5.2.2'
  sha256 'da98016bc0e89a592cbe37fdd9396b3040d17cbc3c9c5f0a297548a35f733d0f'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
