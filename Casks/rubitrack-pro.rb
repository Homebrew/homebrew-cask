cask 'rubitrack-pro' do
  version '4.3.6'
  sha256 '39ce1ed2fcf7f49bac7e0b2e3ee6d99a7c04fffb3eabe33aeb6658cf1656c75e'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'bbf8ac718c95ec7c9dde46a3dc2c93b92ffd412f2a39ecec1baa91e4a1531b3b'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
