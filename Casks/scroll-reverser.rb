cask 'scroll-reverser' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.4'
    sha256 '13b4355e8fa34c702cea1430287abffbfde879ad2f5c47c009b06d2353b7b3fd'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: '831aba8ba0fd03adfc4e25444c0ebbe08e4208a62dfe0a34627de8a53dbaf67b'
  end

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name 'Scroll Reverser'
  homepage 'https://pilotmoon.com/scrollreverser/'

  app 'Scroll Reverser.app'

  zap delete: '~/Library/Caches/com.pilotmoon.scroll-reverser'
end
