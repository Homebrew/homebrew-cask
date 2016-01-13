cask 'screenflow' do
  version '5.0.4'
  sha256 '50b6c7e5b37d57ed2c5707e8cd9542372cda0ad64c7f2c543df0f0bb1ccb86d8'

  url "https://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          :checkpoint => 'b8a20194607e083dc8a481340aec3e5a7162b26b3a4953a7053c2b87625cdb2b'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on :macos => '>= :mavericks'

  app 'ScreenFlow.app'
end
