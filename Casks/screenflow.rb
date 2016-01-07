cask 'screenflow' do
  version '5.0.4'
  sha256 '50b6c7e5b37d57ed2c5707e8cd9542372cda0ad64c7f2c543df0f0bb1ccb86d8'

  url "https://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          :sha256 => 'f206ba1d1eb804613e3997c0885491f01685107ff1a0483467904fe3e81049ce'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on :macos => '>= :mavericks'

  app 'ScreenFlow.app'
end
