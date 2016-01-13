cask 'doubletwist' do
  version '3.1.2'
  sha256 '47975cc7517a6cf8c90362536a7feb53f0ff8af7d45866481d37cad2fcae4dac'

  url "http://download.doubletwist.com/releases/mac/dT-#{version}-kronos-patch1-r11040/doubleTwist.dmg"
  appcast 'http://download.doubletwist.com/mac/appcast.xml',
          :checkpoint => 'c14d82c35a56318042f0b708cc74f177397b44b77f21314060f4d1774a58699c'
  name 'doubleTwist'
  homepage 'https://www.doubletwist.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'doubleTwist.app'

  zap :delete => [
                   '~/Library/Application Support/doubleTwist',
                   '~/Library/Preferences/com.doubleTwist.desktop.plist',
                   '~/Library/Caches/com.doubleTwist.desktop',
                 ]
end
