cask 'phpstorm' do
  version '10.0.3'
  sha256 'bd7d28974ef5587524389659dd27516c1067c35aebeee040821c638a18439e52'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm'
  homepage 'https://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  zap :delete => [
                   '~/Library/Application Support/WebIde100',
                   '~/Library/Preferences/WebIde100',
                   '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
                 ]
end
