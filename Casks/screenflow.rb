cask 'screenflow' do
  version '6.1'
  sha256 'bb32f1f2eaff52e39d2f2fb9cef623cc2390af0606c9bd6497c12c91a4a6ec24'

  url "https://www.telestream.net/download-files/screenflow/#{version.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: 'aa20375740264cf5ecf4e6ed56a0f258f91631fc95f0e71783793840604ed2b9'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
