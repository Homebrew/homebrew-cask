cask :v1 => 'appcode' do
  version '3.3'
  sha256 '4d434684415479fe4a77f504910d214298959162ba532c910278b77915c24388'

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
