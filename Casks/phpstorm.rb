cask 'phpstorm' do
  version '2016.3.2'
  sha256 '7e553c83e8af822cd100832ecc107f16fc1006314fea4c4f52a35d7bb14a0967'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: '7f061838333a997fbaa79c1891e66ea0c21db25c57abfcaa56dc5b91cee54f06'
  name 'JetBrains PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'

  auto_updates true
  conflicts_with cask: 'phpstorm-eap'

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
