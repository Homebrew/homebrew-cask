cask :v1 => 'jitouch' do
  version :latest
  sha256 :no_check

  url 'http://www.jitouch.com/jitouch_yosemite.zip'
  name 'jitouch'
  homepage 'http://www.jitouch.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'jitouch/Jitouch.prefPane'

  zap :delete => '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
