cask :v1 => 'phpstorm' do
  version '8.0.2'
  sha256 'd6c6ee8c84edcdbd7da7c8af33185ecb7a1d9ddb4e5d97b035c9a30d07c8d073'

  url "http://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/phpstorm/'
  license :commercial    # todo: improve this machine-generated value

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
