cask 'rubitrack-pro' do
  version '5.2.5'
  sha256 'dcc8804fc43807a21b56085648e8b3253d0ee51d7ff0139b8f614dcd70b3203f'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
