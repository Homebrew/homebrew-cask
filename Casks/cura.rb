cask :v1 => 'cura' do
  version '15.01'
  sha256 'ab85c8d81fdd168d7644837baeaf1a5b4bdf1f87731ccf674466467c9d6ec343'

  url "http://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
