cask 'rubitrack-pro' do
  version '5.2.8'
  sha256 'c2ec857d9d5511342ac6dc07a87bad45de0142e42ef00e7fc1ac9c1d71485116'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
