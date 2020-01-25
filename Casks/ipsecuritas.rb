cask 'ipsecuritas' do
  if MacOS.version <= :sierra
    version '4.7'
    sha256 '42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba'
  else
    version '4.9.5'
    sha256 'f27bd4afd505d2df213d5da3df339a3f9a7ee882d2db0d5ae74b7ebfe85308a3'
  end

  url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  appcast 'https://www.lobotomo.com/products/IPSecuritas/'
  name 'IPSecuritas'
  homepage 'https://www.lobotomo.com/products/IPSecuritas/'

  depends_on macos: '>= :yosemite'

  app 'IPSecuritas.app'
end
