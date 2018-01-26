cask 'scroll-reverser' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.6'
    sha256 '0df563089470152d2cbf4cfd4e21f3be0dd45b0c334882bbf6dbbe2002afd4b8'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: '52f4d84515f2f4788fbd9fd933233eaa4a4a05e8b435156ec3416a3740f7451e'
  end

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name 'Scroll Reverser'
  homepage 'https://pilotmoon.com/scrollreverser/'

  depends_on macos: '>= :tiger'

  app 'Scroll Reverser.app'

  zap trash: [
               '~/Library/Caches/com.pilotmoon.scroll-reverser',
               '~/Library/Preferences/com.pilotmoon.scroll-reverser.plist',
             ]
end
