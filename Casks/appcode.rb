cask 'appcode' do
  version '3.3.3'
  sha256 'bbc586779ec7c082eca46e266ac3799c6bebdbd8205250f075f04973caafaf54'

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
