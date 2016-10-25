cask 'mini-vmac' do
  version '3.4.1'
  sha256 '1d3b6051c22d68033eb47da5c1ec4cc4b2474ca2095f087b085ceaa5effc19da'

  url "http://www.gryphel.com/d/minivmac/minivmac-#{version}/minivmac-#{version}-imch.bin.tgz"
  name 'Mini vMac'
  homepage 'http://www.gryphel.com/c/minivmac'

  app 'Mini vMac.app'
end
