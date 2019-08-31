cask 'rubitrack-pro' do
  version '5.2.6'
  sha256 '81242036eb2c9922be1477366600f238176e82c3ef4e5aa3fcdffb6ad20dc5f3'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
