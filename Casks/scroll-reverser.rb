cask 'scroll-reverser' do
  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 '7d31ac1f2a2fbdc06db200da0aeb6ce7fea9ffff712b70ddffbfb769d4fd0f25'
  else
    version '1.7.2'
    sha256 'f0ad4d18daae486b14ea5b6809c5222af6c5fc74536574151dce2271d3a67c06'
    appcast 'https://softwareupdate.pilotmoon.com/update/scrollreverser/appcast.xml',
            checkpoint: 'f5741bb6b6c0d421b5a524fb1992308b722d5768ae29f9a311f013d38f221f3d'
  end

  url "https://pilotmoon.com/downloads/ScrollReverser-#{version}.zip"
  name 'Scroll Reverser'
  homepage 'https://pilotmoon.com/scrollreverser/'
  license :gratis

  app 'Scroll Reverser.app'
end
