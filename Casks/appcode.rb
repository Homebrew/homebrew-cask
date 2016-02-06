cask 'appcode' do
  version '3.3.2'
  sha256 '8a49a3942f396717db09e8fd757ffc50de88b072ddb63e41c1ee895fc2cd68d1'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'
  license :commercial

  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  zap delete: [
                "~/.Appcode#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.AppCode.plist',
                "~/Library/Preferences/AppCode#{version.major_minor.no_dots}",
                "~/Library/Application Support/AppCode#{version.major_minor.no_dots}",
                "~/Library/Caches/AppCode#{version.major_minor.no_dots}",
                "~/Library/Logs/AppCode#{version.major_minor.no_dots}",
              ]
end
