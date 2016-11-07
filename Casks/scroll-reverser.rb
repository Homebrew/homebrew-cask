cask 'scroll-reverser' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.3'
    sha256 'e19f585a201bd8e1fa3ea3acdcf436835c2adfe7869f1888009fe5dab15b130a'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: '0ba5505031699c96c955d66f9a983447565f014fc9c0807d731a468069408790'
  end

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name 'Scroll Reverser'
  homepage 'https://pilotmoon.com/scrollreverser/'

  app 'Scroll Reverser.app'

  zap delete: '~/Library/Caches/com.pilotmoon.scroll-reverser'
end
