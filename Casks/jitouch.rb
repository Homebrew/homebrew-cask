cask :v1 => 'jitouch' do
  version :latest
  sha256 :no_check

  url 'http://www.jitouch.com/jitouch_yosemite.zip'
  homepage 'http://www.jitouch.com'
  license :unknown

  prefpane 'jitouch/Jitouch.prefPane'

  zap :delete => '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
