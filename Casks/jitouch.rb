cask 'jitouch' do
  version :latest
  sha256 :no_check

  url 'https://www.jitouch.com/jitouch_el_capitan.zip'
  name 'jitouch'
  homepage 'https://www.jitouch.com'
  license :commercial

  prefpane 'jitouch/Jitouch.prefPane'

  zap delete: '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
