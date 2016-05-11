cask 'phpstorm' do
  version '2016.1.1'
  sha256 '1c88786b44d14d87878fb905ce3db4105bb60d1680643f90406608a945aed4eb'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                "~/.PhpStorm#{version.major_minor}",
                "~/Library/Preferences/PhpStorm#{version.major_minor}",
                "~/Library/Caches/PhpStorm#{version.major_minor}",
                "~/Library/Logs/PhpStorm#{version.major_minor}",
                "~/Library/Application Support/PhpStorm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.phpstorm.*.plist',
              ]
end
