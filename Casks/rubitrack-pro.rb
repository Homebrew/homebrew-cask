cask 'rubitrack-pro' do
  version '5.0.5'
  sha256 'dbf145ad5a85dae609d114fd82cee5e953c8a8c09428383b2ebb054a5953b947'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '8edd6027a13929dc8f0fac35ea6f216298272d927aa3ac130d6cffd633e01261'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
