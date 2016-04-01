cask 'appcode' do
  version '2016.1'
  sha256 'dec7447da549f6c2033e6bea8587413888e881f0019a436a711ed07fc42c2b58'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
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
