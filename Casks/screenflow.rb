cask 'screenflow' do
  version '7.1'
  sha256 '584d16451aea1be65adcd60cdca27a8ceee7342bbb0b99df3d8d4adedf3a293e'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '8283f97fdbd4f5374acf9dcef4fe2359e68f5d5196620bb063ff884e0814fbc1'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
