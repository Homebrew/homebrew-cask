cask 'screenflow' do
  version '6.2.1'
  sha256 '06859b806ee441afc47dbf9e073464430c84ec0ff1615765cf8345ec50edeee3'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: 'c445b8b0128c522ed6f8b20e86e4c2fe9d308cb8e1e7422bbb839ba754f50c58'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
