cask 'cura' do
  version '15.04.2'
  sha256 '48157d41c03d1a8d19edb4c2a7e2356f57d0a6d6a64a50c087962d64b1841a6b'

  url "https://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap delete: '~/.cura'
end
