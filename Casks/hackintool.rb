cask 'hackintool' do
  version '3.4.2'
  sha256 '36920e227a12bd3d40b19ea8e14569bbb89efc0a62bc0d2517c69f2461446b79'

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
