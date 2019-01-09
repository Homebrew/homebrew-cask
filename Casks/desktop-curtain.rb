cask 'desktop-curtain' do
  version '3.0.8'
  sha256 'ebc2b908bad8e3591dd7cf4c499350356cf759e48ac747a91575668eb68a00db'

  url "https://manytricks.com/download/_do_not_hotlink_/desktopcurtain#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/desktopcurtain/appcast/'
  name 'Desktop Curtain'
  homepage 'https://manytricks.com/desktopcurtain/'

  auto_updates true

  app 'Desktop Curtain.app'

  zap trash: '~/Library/Preferences/com.manytricks.DesktopCurtain.plist'
end
