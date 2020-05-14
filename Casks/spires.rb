cask 'spires' do
  version '1.8.8'
  sha256 '24677b889acfdb40af786cf2abf58369dcb60474491105a44d0cd9aa5f774f4e'

  url "https://member.ipmu.jp/yuji.tachikawa/spires/zips/spires_#{version}.zip"
  appcast 'https://member.ipmu.jp/yuji.tachikawa/spires/spires-Update.xml'
  name 'spires'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/spires/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'spires.app'

  zap trash: [
               '~/Library/Application Support/spires',
               '~/Library/Caches/com.yujitach.spires',
               '~/Library/Cookies/com.yujitach.spires.binarycookies',
               '~/Library/Preferences/com.yujitach.spires.plist',
               '~/Library/Saved Application State/com.yujitach.spires.savedState',
             ]
end
