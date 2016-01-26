cask 'icecat' do
  version '38.5.2'
  sha256 '87792c64b4b1e815db3c95406dcae3920932c76dd51ed678112e4fcdc3cd6e2b'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac64.dmg"
  name 'IceCat'
  homepage 'https://www.gnu.org/software/gnuzilla/'
  license :gpl

  app 'IceCat.app'
end
