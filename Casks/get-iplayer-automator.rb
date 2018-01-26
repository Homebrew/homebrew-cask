cask 'get-iplayer-automator' do
  version '1.9.13.b20171126001'
  sha256 '76f2d95274f304970a98ae9adad584ce2360fa428aae09c84ab582d9484a0e33'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '7cb9ac2896d1efdb580873cfe559ce6e3c01cf312e4c418c509449960036f33b'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
