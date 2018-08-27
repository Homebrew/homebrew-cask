cask 'leela' do
  version '0.11.0'
  sha256 'f2c11799f7b548e1ca1f6ba8dca330d9ec44eed4d1a53439b5bceef86e0d0ae1'

  url "https://sjeng.org/dl/Leela_#{version}.dmg"
  name 'Leela'
  homepage 'https://sjeng.org/leela.html'

  app 'Leela.app'
  app 'Leela OpenCL.app'
end
