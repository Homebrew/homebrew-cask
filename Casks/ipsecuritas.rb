cask 'ipsecuritas' do
  if MacOS.version <= :sierra
    version '4.7'
    sha256 '42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba'
  else
    version '4.9.1'
    sha256 '4e23830ab3a8b15f25bfe602c6f1b29c9766ae680afcaf0831047216b05836df'
  end

  url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  appcast 'https://www.lobotomo.com/products/IPSecuritas/'
  name 'IPSecuritas'
  homepage 'https://www.lobotomo.com/products/IPSecuritas/'

  depends_on macos: '>= :yosemite'

  app 'IPSecuritas.app'
end
