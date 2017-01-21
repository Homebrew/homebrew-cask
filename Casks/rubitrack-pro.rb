cask 'rubitrack-pro' do
  version '4.3.7'
  sha256 'ef7662c4a55b27a615d50c31be422a29a303dc5e2864f6d5dc0b4e7d7de3ae95'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '2682d1f8e8d9af9f1e9100aeadda88577543f360af125f3e3a4de2332ff418ba'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
