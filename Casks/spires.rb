cask 'spires' do
  version '1.9.2'
  sha256 'a5a4817b5248ac626a6786d639769779753d478c730d91054322d239d13e0c29'

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
