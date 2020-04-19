cask 'hackintool' do
  version '3.3.9'
  sha256 '590ad00ee383f2af147513874acbf79e0155a7e7509214790b12591bcdc3947c'

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
  appcast 'https://github.com/headkaze/Hackintool/releases.atom'
  name 'Hackintool'
  homepage 'https://github.com/headkaze/Hackintool'

  auto_updates true

  app 'Hackintool.app'

  zap trash: [
               '~/Library/Cookies/com.Headsoft.Hackintool.binarycookies',
               '~/Library/Caches/com.Headsoft.Hackintool',
               '~/Library/Caches/com.apple.helpd/Generated/com.Headsoft.Hackintool.help*',
               '~/Library/Preferences/com.Headsoft.Hackintool.plist',
             ]
end
