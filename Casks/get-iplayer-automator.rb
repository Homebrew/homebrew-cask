cask 'get-iplayer-automator' do
  version '1.13.3.b20180411001'
  sha256 'f65c322486c4b00386151ef49560a2f8aec0cc8ea0860d761fc32bebd6ace1be'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '411c4d2d4a717c7f7bf55aef10b53d8a904822a076d53d87b30e96c9c1ef4623'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
