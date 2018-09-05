cask 'jitouch' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :mountain_lion
    url 'http://www.jitouch.com/jitouch_mountain_lion.zip'
  elsif MacOS.version <= :mavericks
    url 'http://www.jitouch.com/jitouch_mavericks.zip'
  elsif MacOS.version <= :el_capitan
    url 'http://www.jitouch.com/jitouch_el_capitan.zip'
  else
    url 'http://www.jitouch.com/jitouch_sierra.zip'
  end

  name 'jitouch'
  homepage 'http://www.jitouch.com/'

  prefpane 'jitouch/Jitouch.prefPane'

  zap trash: '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
