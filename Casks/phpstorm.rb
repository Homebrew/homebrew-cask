cask 'phpstorm' do
  version '2016.3.3'
  sha256 '81f52743ac89b19a5ce1720dbf1acbe541ac2801049c0d4f15e8bbe88c5df29c'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release',
          checkpoint: 'cb02b1c9a140186498636a35fa33e6f48e62ad80523809b92e912a300b94d4fa'
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
