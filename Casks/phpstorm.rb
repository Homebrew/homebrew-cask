cask :v1 => 'phpstorm' do
  version '10.0'
  sha256 '6651185b3dace3f9a89046573558cd9223729de2abe90821aa1c2eae146d9dc5'

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
