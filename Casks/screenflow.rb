cask 'screenflow' do
  version '5.0.6'
  sha256 'b0e2ec943246a781acd0fc115d319e361bb37f9f8edc0fd514ac066de8eb6ca0'

  url "https://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '6bd24fda5938082529eb818c644e02b8d4e23592352c9749ff7fd851ec4b822e'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'ScreenFlow.app'
end
