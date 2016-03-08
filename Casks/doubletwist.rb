cask 'doubletwist' do
  version '3.1.2'
  sha256 '47975cc7517a6cf8c90362536a7feb53f0ff8af7d45866481d37cad2fcae4dac'

  url "http://download.doubletwist.com/releases/mac/dT-#{version}-kronos-patch1-r11040/doubleTwist.dmg"
  appcast 'http://download.doubletwist.com/mac/appcast.xml',
          checkpoint: 'a3f962a943107206797fc0c4352333e32d875750a507bd69932fc722f8c360f6'
  name 'doubleTwist'
  homepage 'https://www.doubletwist.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'doubleTwist.app'

  zap delete: [
                '~/Library/Application Support/doubleTwist',
                '~/Library/Preferences/com.doubleTwist.desktop.plist',
                '~/Library/Caches/com.doubleTwist.desktop',
              ]
end
