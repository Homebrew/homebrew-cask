cask 'screenflow' do
  version '6.0'
  sha256 '13bb451c96f08cc6bc1d542d71e3a39126f92ecd8cebb0c05101429504e8530c'

  url "https://www.telestream.net/download-files/screenflow/#{version.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '3be8f24b6237d929e2d94d735e6129dfd8162d885523a275bef4b30efd0e97de'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
