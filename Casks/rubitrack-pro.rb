cask 'rubitrack-pro' do
  version '5.0.2'
  sha256 'a4b2ce1fe96f32dfce83f708d0aadb57c6e31e3f4d151f5ae6916fa242aa1ba6'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '38da165545e9e2f5048abfd5bfad25a92ac781630da00a66eab4d22574cfd517'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
