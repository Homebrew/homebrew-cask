cask 'rubitrack-pro' do
  version '5.2'
  sha256 '2cd46f437af3271a3e3ab1285a8a5ea310782a75fadb1d8e4f1536b0c0252e9d'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
