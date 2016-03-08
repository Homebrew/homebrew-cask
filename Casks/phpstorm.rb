cask 'phpstorm' do
  version '10.0.3'
  sha256 'bd7d28974ef5587524389659dd27516c1067c35aebeee040821c638a18439e52'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap delete: [
                "~/.WebIde#{version.major_minor.no_dots}",
                "~/Library/Caches/WebIde#{version.major_minor.no_dots}",
                "~/Library/Logs/WebIde#{version.major_minor.no_dots}",
                "~/Library/Application Support/WebIde#{version.major_minor.no_dots}",
                "~/Library/Preferences/WebIde#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
              ]
end
