cask 'avogadro' do
  version '1.1.1'
  sha256 '8e63b7ec07555fd30ea2c22ed7f070e1b692fd2c9fbb60a3c8e0ddd411bb6477'

  # sourceforge.net/avogadro was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/avogadro/Avogadro-#{version}.dmg.zip"
  name 'Avogadro'
  homepage 'http://avogadro.openmolecules.net/'
  license :gpl

  container nested: "Avogadro-#{version}.dmg"

  app 'Avogadro.app'
end
