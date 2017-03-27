cask 'phpstorm' do
  version '2017.1'
  sha256 '8e4f56e0d7ba32f2e051495c8ff03450d281ad5134923ef37db1546f2ff9442b'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: 'df181a39091f326ae20a8fa614d03edbe3ef3dbe003b4d20205d03f079a7ca1b'
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
                '~/Library/Preferences/jetbrains.phpstorm.*.plist',
              ]
end
