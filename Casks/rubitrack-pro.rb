cask 'rubitrack-pro' do
  version '5.0.5'
  sha256 'd19427d94dad47752055ebad0f8fb58b5adfffb86714d8d6bc7c7f71e7683579'

  url "https://www.rubitrack.com/files/rubiTrack-#{version}.dmg"
  appcast "https://www.rubitrack.com/autoupdate/sparkle#{version.major}.xml",
          checkpoint: '157abf2625259b1f03ab18346c022cc9d3f5c22bae94cc8679aca7323876b123'
  name 'rubiTrack'
  homepage 'https://www.rubitrack.com/'

  depends_on macos: '>= :yosemite'

  app "rubiTrack #{version.major} Pro.app"
end
