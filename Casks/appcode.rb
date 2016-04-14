cask 'appcode' do
  version '2016.1.1'
  sha256 'e25bae93640fb736fb9d6ae33984e73931650c753d989e5ff904d30ae3b5a094'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'
  license :commercial

  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  zap delete: [
                "~/.Appcode#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.appcode.*.plist',
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
