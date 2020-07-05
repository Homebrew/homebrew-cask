cask 'spires' do
  version '1.9.3'
  sha256 'a9a59f5716ca394575a070745a82ae93a98a8dad80695ae27ac2317be7c9a9c5'

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
