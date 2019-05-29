cask 'desktop-curtain' do
  version '3.0.9'
  sha256 '7423d3f2b1b58f385192d70491097fe9176f11c44e8bf9c0241b2178adfc97a9'

  url "https://manytricks.com/download/_do_not_hotlink_/desktopcurtain#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/desktopcurtain/appcast/'
  name 'Desktop Curtain'
  homepage 'https://manytricks.com/desktopcurtain/'

  auto_updates true

  app 'Desktop Curtain.app'

  zap trash: '~/Library/Preferences/com.manytricks.DesktopCurtain.plist'
end
