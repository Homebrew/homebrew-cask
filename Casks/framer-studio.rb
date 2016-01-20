cask 'framer-studio' do
  version '1.11.188'
  sha256 'b1fff971456a4af5ad88661344dbad079d5ba08e25dfc2c6f252824d1916206b'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  appcast 'http://studio.update.framerjs.com/appcast.xml',
          checkpoint: 'e76c4383947ebe76cd1e16c19f2f87c8d4e60c13ade2a5ae591267c7155632da'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
