cask 'hackintool' do
  version '3.4.1'
  sha256 'c327be0d74813bf0d4191e7771a0b60a0853df7e5ec2f3fa63fd37ea8736aba8'

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
