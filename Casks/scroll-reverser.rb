cask 'scroll-reverser' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.4'
    sha256 '13b4355e8fa34c702cea1430287abffbfde879ad2f5c47c009b06d2353b7b3fd'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: 'b12f7f3fc7fd6ae1dffe1b7e48b1d66f715cc5cd9e0686db571e3fd8f7e8ac79'
  end

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name 'Scroll Reverser'
  homepage 'https://pilotmoon.com/scrollreverser/'

  depends_on macos: '>= :tiger'

  app 'Scroll Reverser.app'

  zap delete: [
                '~/Library/Caches/com.pilotmoon.scroll-reverser',
                '~/Library/Preferences/com.pilotmoon.scroll-reverser.plist',
              ]
end
