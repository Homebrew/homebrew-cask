cask 'get-iplayer-automator' do
  version '1.9.11.b20171115001'
  sha256 'bfbcab722dbaaa9d090a4fbaaa55e70ef15d89da9018fb74dbe3680f030d1de9'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: 'fc33398738b37d6348640c36e6f59e04363094357ea6151a822b30a1038cd71a'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
