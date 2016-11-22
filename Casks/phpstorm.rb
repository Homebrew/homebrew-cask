cask 'phpstorm' do
  version '2016.2.2'
  sha256 '9422a5d8733f82f8a77d7da7376a7bf58ca9d170c43dc1392c8377bda5e6711b'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'

  app 'PhpStorm.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                "~/Library/Preferences/PhpStorm#{version.major_minor}",
                "~/Library/Caches/PhpStorm#{version.major_minor}",
                "~/Library/Logs/PhpStorm#{version.major_minor}",
                "~/Library/Application Support/PhpStorm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.phpstorm.*.plist',
              ]
end
