cask 'rubitrack-pro' do
  version '5.3.2'
  sha256 '789ec84384b2e5ce8187d4e957b98892b4c830a3b9abb513ed9747ee3ba22136'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml"
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :sierra'

  app "rubiTrack #{version.major} Pro.app"
end
