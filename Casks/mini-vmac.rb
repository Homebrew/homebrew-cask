cask 'mini-vmac' do
  version '3.5.8'
  sha256 '09a4a2ffd4f44087bf929cec89ecacd3b775690f137b211627154076627ce4cf'

  url "http://www.gryphel.com/d/minivmac/minivmac-#{version}/minivmac-#{version}-imch.bin.tgz"
  name 'Mini vMac'
  homepage 'http://www.gryphel.com/c/minivmac/'

  app 'Mini vMac.app'
end
