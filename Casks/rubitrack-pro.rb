cask 'rubitrack-pro' do
  version '4.3.9'
  sha256 '87374feaf9245e7dcbf6fd70b34bfec7ea59ec44d1a96555c828dc05ff70524f'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'e8eebb435f931bb98eb3d587d4665d2b9cdf5cc0906b9f38e5a76c9ecdee57c8'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
