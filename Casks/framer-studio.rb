cask :v1 => 'framer-studio' do
  version '1.11.188'
  sha256 'b1fff971456a4af5ad88661344dbad079d5ba08e25dfc2c6f252824d1916206b'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  name 'Framer Studio'
  appcast 'http://studio.update.framerjs.com/appcast.xml',
          :sha256 => '2d6e82bb3d57ecf9d7dcb339efea422f6feaed924b73a15b550b69f07b8b9172'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
