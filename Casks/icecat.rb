cask :v1 => 'icecat' do
  version '31.8.0'
  sha256 'd5ec5308bba40f8498f89cd70c5bfb2ce51370543a326c0e9697cbeb5c41c0c9'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac.dmg"
  name 'IceCat'
  homepage 'http://www.gnu.org/software/gnuzilla/'
  license :gpl

  app 'IceCat.app'
end
