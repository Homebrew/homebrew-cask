cask :v1 => 'phpstorm' do
  version '10.0.1'
  sha256 'f5ec2acf1d15fcf06ff32c415fad76b3d2e60b9a034e6709ebf933ef60574b01'

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
