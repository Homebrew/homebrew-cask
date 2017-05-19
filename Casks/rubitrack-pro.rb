cask 'rubitrack-pro' do
  version '4.4.2'
  sha256 'ffa5c1f64795b3eb199eeac5aa92449d084b2de45d6106b2640478b667b2d3b6'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '3d88c03f2c0b5c681552c722412e902b3f0f1e803630e1c7abed9cf1eb6d247c'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
