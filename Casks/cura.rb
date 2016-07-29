cask 'cura' do
  version '15.04.6'
  sha256 'a3ce29da4d024187e6db1cc2f5643d2084160a2d09be738fe83e1a18d8456ef5'

  url "https://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura/Cura.app'

  zap delete: '~/.cura'
end
