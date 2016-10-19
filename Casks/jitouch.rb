cask 'jitouch' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :mountain_lion
    url 'https://www.jitouch.com/jitouch_mountain_lion.zip'
  elsif MacOS.version <= :mavericks
    url 'https://www.jitouch.com/jitouch_mavericks.zip'
  elsif MacOS.version <= :el_capitan
    url 'https://www.jitouch.com/jitouch_el_capitan.zip'
  else
    url 'https://www.jitouch.com/jitouch_sierra.zip'
  end

  name 'jitouch'
  homepage 'https://www.jitouch.com'

  prefpane 'jitouch/Jitouch.prefPane'

  zap delete: '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
