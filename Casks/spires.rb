cask 'spires' do
  version '1.9.0'
  sha256 'b6b35ed170c8509eb0da4270050c2bf5f4cb3739fa587c96e8177c7cbb7ec4f0'

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
