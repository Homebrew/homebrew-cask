cask 'screenflow' do
  version '5.0.4'
  sha256 '50b6c7e5b37d57ed2c5707e8cd9542372cda0ad64c7f2c543df0f0bb1ccb86d8'

  url "https://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: 'aa64d30b6d59753d13e44634ca15a1a134d14272bfce261e4621113aaafa6408'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'ScreenFlow.app'
end
