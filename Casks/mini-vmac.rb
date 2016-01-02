cask 'mini-vmac' do
  version '3.3.3'
  sha256 '40a0a2a8a5f37a1f7826e104f0219708c87b6759d071c2d69e1419fbbf5d1dbf'

  url "http://www.gryphel.com/d/minivmac/minivmac-#{version}/minivmac-#{version}-imch.bin.tgz"
  name 'Mini vMac'
  homepage 'http://www.gryphel.com/c/minivmac'
  license :gpl

  app 'Mini vMac.app'
end
