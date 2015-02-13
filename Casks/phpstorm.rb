cask :v1 => 'phpstorm' do
  version '8.0.3'
  sha256 '6c9b36ebfed67f5ec2e6a96f2f61826653b312686ecd8a298e0e2ca3e3a09559'

  url "http://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'PhpStorm'
  homepage 'http://www.jetbrains.com/phpstorm/'
  license :commercial

  app 'PhpStorm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebIde80',
                  '~/Library/Preferences/WebIde80',
                  '~/Library/Preferences/com.jetbrains.PhpStorm.plist',
                 ]
end
