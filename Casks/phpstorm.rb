cask :v1 => 'phpstorm' do
  version '8.0.1'
  sha256 'ff8af437d96befd475744e08b1d663df778db8711e2671551fc797cd30b0cdc7'

  url "http://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/phpstorm/'
  license :unknown    # todo: improve this machine-generated value

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
