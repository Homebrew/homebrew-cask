cask 'phpstorm' do
  version '2016.2'
  sha256 '3b431f0fb4f3446b9b6aa808af1606929a65dc4329165b1d2fccad9b2e79ee90'

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
