cask 'get-iplayer-automator' do
  version '1.13.13.b20180827002'
  sha256 'f5c87ab3e16dea3e9f325fd29855f1b3ea5e68f61da3d08aea12b3fdbe5673d2'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
