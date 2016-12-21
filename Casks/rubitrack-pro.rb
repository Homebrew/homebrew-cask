cask 'rubitrack-pro' do
  version '4.3.5'
  sha256 'ff997eee5162b5edd5589d77c90560936a59fa2fb222582c7941ea6eb4dbb42d'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '5d0e4be8bc2de6f7ec510e0a15e71e27b58a66be352aa6e4b45474aa82e525d8'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
