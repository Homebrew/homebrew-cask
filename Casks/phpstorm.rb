cask 'phpstorm' do
  version '10.0.2'
  sha256 '2035db0610f8e08a4083df986bc26eb4bdd8478caf5fbdadc7549aad73f28dcd'

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
