cask 'phpstorm' do
  version '2016.2.1'
  sha256 '8ca63d50da56d1ab2663406922e10c88bb46c3c2569b2ff434aa8a72014237e5'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

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
