cask 'get-iplayer-automator' do
  version '1.13.10.b20180621001'
  sha256 'ef38c4d833779f93246128e04762f7aa8bcf10f70e96fd353b5de3f2acd788aa'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
