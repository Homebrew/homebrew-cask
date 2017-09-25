cask 'qcad' do
  version '3.18.0'
  sha256 'd8b68dc4867fb2ac7591ec084c9979fad2322c717d54363ce003bdc6e04e0b46'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.12.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
