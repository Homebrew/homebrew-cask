cask :v1 => 'icecat' do
  version '31.7.0'
  sha256 'f650d3bb8f983a3dfab0576c05e0f40637976a1e6084f3d1ad23a8d33c02eaee'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac.dmg"
  name 'IceCat'
  homepage 'http://www.gnu.org/software/gnuzilla/'
  license :gpl

  app 'IceCat.app'
end
