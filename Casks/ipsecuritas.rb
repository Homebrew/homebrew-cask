cask 'ipsecuritas' do
  if MacOS.version <= :sierra
    version '4.7'
    sha256 '42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba'
  else
    version '4.8'
    sha256 '4dea27a69d4dd6a03ddd7dfd2ea9b088643621f21b5ebf2524ea68b5af3b31ee'
  end

  url "http://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  name 'IPSecuritas'
  homepage 'http://www.lobotomo.com/products/IPSecuritas/'

  depends_on macos: '>= :yosemite'

  app 'IPSecuritas.app'
end
