cask 'rubitrack-pro' do
  version '5.0.3'
  sha256 '9c0cb0360deb1fa72448eda600273f5c00083b8944958dfe69da6b80e4755089'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '6dd8ac7a0a6bc34f709e017009fef77cea66fbfb4f3fc56817566b18ac83b0a5'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
