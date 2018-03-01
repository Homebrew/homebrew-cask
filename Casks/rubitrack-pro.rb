cask 'rubitrack-pro' do
  version '4.4.6'
  sha256 'bdca80859c57e9dcaf5b6ddf685e729388e23d4be0ef3726ba14ca587fa3ce20'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'd9d4344855a45bebdc12d4b5f283852bf62bbee40b2ea552901783f81517af97'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
