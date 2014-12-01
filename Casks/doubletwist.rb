cask :v1 => 'doubletwist' do
  version '3.1.2'
  sha256 '47975cc7517a6cf8c90362536a7feb53f0ff8af7d45866481d37cad2fcae4dac'

  url "http://download.doubletwist.com/releases/mac/dT-#{version}-kronos-patch1-r11040/doubleTwist.dmg"
  appcast 'http://download.doubletwist.com/mac/appcast.xml',
          :sha256 => '63ad1487f6e129aa79b9724f9191a52aa1a31ec0c26de63a9d778c1dd709a815'
  homepage 'http://www.doubletwist.com/'
  license :unknown

  app 'doubleTwist.app'

  zap :delete => [
                  '~/Library/Application Support/doubleTwist',
                  '~/Library/Preferences/com.doubleTwist.desktop.plist',
                  '~/Library/Caches/com.doubleTwist.desktop'
                 ]
end
