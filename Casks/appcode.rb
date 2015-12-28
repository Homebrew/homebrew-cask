cask 'appcode' do
  version '3.3.2'
  sha256 '8a49a3942f396717db09e8fd757ffc50de88b072ddb63e41c1ee895fc2cd68d1'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode.plist',
                  '~/Library/Preferences/AppCode33',
                  '~/Library/Application Support/AppCode33',
                  '~/Library/Caches/AppCode33',
                  '~/Library/Logs/AppCode33',
                 ]

  conflicts_with :cask => 'appcode-eap'
end
