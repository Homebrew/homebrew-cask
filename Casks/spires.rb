cask 'spires' do
  version '1.9.1'
  sha256 '1c43a7c9c5861bf3b411384a25627a132608dadb9c58885910fed63f07914bc5'

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
