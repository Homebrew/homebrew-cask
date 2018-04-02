cask 'rubitrack-pro' do
  version '4.4.7'
  sha256 'f159c82225bd607d8fa41bcd766fa4f79859aa356942be91730c64f8081aab6d'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}_u.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: 'bd8a93acbd69c1ebc09c86e2ca8d0ea91596b7200df9a5982ba2f26867ff0a3d'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
