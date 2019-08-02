cask 'rubitrack-pro' do
  version '5.2.6'
  sha256 '0deeef21415b2b549d9acc724ddeacc3fc89976f9950cab57dfdc3b23176a900'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
