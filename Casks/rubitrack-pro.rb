cask 'rubitrack-pro' do
  version '4.3.8'
  sha256 '3cf3d4f7022ecc42abc758af34047b65ce4cf5beecddf8d44df0fd0d9d03f8e8'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'ad81127e814d6f0b8640f6d6586d6061b8e3f9331806d7f836b0d3632d7f2129'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
