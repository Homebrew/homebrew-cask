cask 'rubitrack-pro' do
  version '5.3'
  sha256 '4770a2357c4262e9ac5985db10f2dd65613f08ee2b624c998f8fc3ea91d2f0c3'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
