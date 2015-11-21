cask :v1 => 'jitouch' do
  version :latest
  sha256 'a3b762820beb60d91ba0f4383fb0ffa2eeb06bca6f6c366bf2d871c2cb23d019'

  url 'https://www.jitouch.com/jitouch_el_capitan.zip'
  name 'jitouch'
  homepage 'https://www.jitouch.com'
  license :commercial

  prefpane 'jitouch/Jitouch.prefPane'

  zap :delete => '~/Library/Preferences/com.jitouch.Jitouch.plist'
end
