cask 'framer-studio' do
  version '1.11.188'
  sha256 'b1fff971456a4af5ad88661344dbad079d5ba08e25dfc2c6f252824d1916206b'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  appcast 'http://studio.update.framerjs.com/appcast.xml',
          :checkpoint => '0536296d8c30aabf8d324bf439c68af86b81b50d556963152317b11acd040fbf'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
