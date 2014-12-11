cask :v1 => 'preen' do
  version '1.61'
  sha256 '04d10c5e06cd22704c8fb53ee2d9f67692bacdeb1cd90e44e08e3dff8afe15e3'

  url "http://anomiesoftware.com/downloads/preenImage#{version}.dmg"
  appcast 'http://www.anomiesoftware.com/PreenAppcast.xml',
          :sha256 => 'd4e76fcd407b0b93ea02071f03adc934606c4bc061d6f7fb3d2186c81762803d'
  homepage 'http://anomiesoftware.com/Anomie_Software/Preen.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Preen.app'
end
