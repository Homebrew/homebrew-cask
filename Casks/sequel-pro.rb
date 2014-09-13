class SequelPro < Cask
  version '1.0.2'
  sha256 'facd99344d0124cf4444acbef9006d947eadc6f96127b09e7380f014c7775f85'

  url 'https://sequel-pro.googlecode.com/files/sequel-pro-1.0.2.dmg'
  appcast 'http://www.sequelpro.com/appcast/app-releases.xml'
  homepage 'http://www.sequelpro.com/'

  app 'Sequel Pro.app'
  zap :files => '~/Library/Application Support/Sequel Pro/Data'
end
