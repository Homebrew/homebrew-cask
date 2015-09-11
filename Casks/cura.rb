cask :v1 => 'cura' do
  version '15.06.01'
  sha256 'e5119c37c6793c67f6cef2a4f8d86ba43e5a77ed14598227af45ecc31f8c4c0d'

  url "http://software.ultimaker.com/15.06/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
