cask 'rubitrack-pro' do
  version '5.1.1'
  sha256 '06acf18175647ee5effab56df6b78be681842b7c2f1ec7fb37bb4a45a2e852d1'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
