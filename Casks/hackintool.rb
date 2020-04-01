cask 'hackintool' do
  version '3.3.5'
  sha256 '4537520374da81ebab843a60a93b2b35171f511a0197aeaeb0d8b93033efd1f1'

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
