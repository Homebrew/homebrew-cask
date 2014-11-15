cask :v1 => 'avogadro' do
  version '1.1.1'
  sha256 '8e63b7ec07555fd30ea2c22ed7f070e1b692fd2c9fbb60a3c8e0ddd411bb6477'

  url "https://downloads.sourceforge.net/avogadro/Avogadro-#{version}.dmg.zip"
  homepage 'http://avogadro.openmolecules.net/'
  license :gpl

  container :nested => "Avogadro-#{version}.dmg"
  app 'Avogadro.app'
end
