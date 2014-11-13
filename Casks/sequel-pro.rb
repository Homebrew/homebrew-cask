cask :v1 => 'sequel-pro' do
  version '1.0.2'
  sha256 'facd99344d0124cf4444acbef9006d947eadc6f96127b09e7380f014c7775f85'

  url "https://sequel-pro.googlecode.com/files/sequel-pro-#{version}.dmg"
  appcast 'http://www.sequelpro.com/appcast/app-releases.xml',
          :sha256 => 'd6137595bccddd81edfb3a07a82b4ed818b8b1af79750397f929bf74b91d3e32'
  homepage 'http://www.sequelpro.com/'
  license :oss

  app 'Sequel Pro.app'
  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
