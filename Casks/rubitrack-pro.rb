cask 'rubitrack-pro' do
  version '4.4.5'
  sha256 'eb29912f3511fad5175446395e84e8f15c5e9d13c3d1d04ba78cbb9617d1d6e0'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'ae47d04bcfdeaa6281c683e5f6c633c0b08dbc51552c90a0e583137c38963e0b'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
