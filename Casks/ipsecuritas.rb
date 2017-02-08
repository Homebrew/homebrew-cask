cask 'ipsecuritas' do
  version '4.7'
  sha256 '42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba'

  url "http://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  name 'IPSecuritas'
  homepage 'http://www.lobotomo.com/products/IPSecuritas/'

  app 'IPSecuritas.app'
end
