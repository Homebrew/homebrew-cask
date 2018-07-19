cask 'desktop-curtain' do
  version '3.0.7'
  sha256 '3eb05d9b6d17f978d23a518ecfc1663e077f5844010493aa682638c5a2b82114'

  url "https://manytricks.com/download/_do_not_hotlink_/desktopcurtain#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/desktopcurtain/appcast/'
  name 'Desktop Curtain'
  homepage 'https://manytricks.com/desktopcurtain/'

  auto_updates true

  app 'Desktop Curtain.app'

  zap trash: '~/Library/Preferences/com.manytricks.DesktopCurtain.plist'
end
