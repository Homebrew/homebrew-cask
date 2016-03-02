cask 'cgoban' do
  version :latest
  sha256 :no_check

  # gokgs.com is the official download location of the DMG version of CGoban3
  url "http://files.gokgs.com/javaBin/cgoban.dmg"
  name 'CGoban'
  homepage 'https://www.gokgs.com/download.jsp'
  license :closed

  app 'CGoban.app'
  zap delete: '~/Library/Preferences/org.igoweb.cgoban.plist'

end
