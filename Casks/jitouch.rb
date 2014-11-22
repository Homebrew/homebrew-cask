cask :v1 => 'jitouch' do
  version '2.6'
  sha256 '970e464b42545968a50c9675a1d46c9aff1eec3b488e8687a5fd0394b4feb653'

  url 'http://www.jitouch.com/jitouch_yosemite.zip'
  homepage 'http://www.jitouch.com'
  license :unknown

  prefpane 'jitouch/Jitouch.prefPane'

  zap delete: '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
