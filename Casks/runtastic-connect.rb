cask :v1 => 'runtastic-connect' do
  version :latest
  sha256 :no_check

  url 'http://download.runtastic.com/connect/mac/runtasticConnect.dmg'
  appcast 'http://download.runtastic.com/connect/mac/appcast.xml'
  name 'Runtastic Connect'
  homepage 'https://www.runtastic.com/connect'
  license :gratis

  app 'Runtastic Connect.app'
end
