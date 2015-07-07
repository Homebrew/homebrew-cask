cask :v1 => 'cura' do
  version '15.06.01'
  sha256 'b26d759d2905fffdba37f6fbc1310d08d060a27245add2a91cfd1d1db18ef954'

  url "http://software.ultimaker.com/15.06/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
