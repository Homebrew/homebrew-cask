cask 'get-iplayer-automator' do
  version '1.13.11.b20180705001'
  sha256 '3aab180f3f0d4e35be18754855f66a5b3623f78d3cad3a23f1054a7ac301111a'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
