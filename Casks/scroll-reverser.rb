cask 'scroll-reverser' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.5'
    sha256 '9d7e8ab69686071428818677be09c842f52456637b84b6700305a9119db04187'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: 'f8f5428ee550e2f43c2919abb78ff3f37412a8a9b4b1f35ad91aa123a48f9cc1'
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
