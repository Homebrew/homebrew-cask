cask 'rubitrack-pro' do
  version '5.0.6'
  sha256 '650f7353345cea38b3bbcc9b85717a8a9ff22c2c052f2f33b249839471af975e'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
