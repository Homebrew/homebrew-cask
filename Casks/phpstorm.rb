cask 'phpstorm' do
  version '2016.1.2'
  sha256 '8c2151b95903105d19d9a6d60aa4fd10ae7159c75680f1071dce8bd2fb900e4d'

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
