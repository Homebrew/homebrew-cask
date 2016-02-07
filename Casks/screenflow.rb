cask 'screenflow' do
  version '5.0.5'
  sha256 'a54d6a0600d791292f8be713242e3eb55efd81987e7153e3bf67cd9d76526813'

  url "https://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '1b639db2c9cfa942d739299513ef26e220b5878138307b14043099b86e813193'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'ScreenFlow.app'
end
