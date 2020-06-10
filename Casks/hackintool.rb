cask 'hackintool' do
  version '3.4.0'
  sha256 '2241209451afa15640cd23212d10f470825b2a545aad05314e718dbd07d886a1'

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
