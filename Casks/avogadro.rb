cask 'avogadro' do
  version '1.1.1'
  sha256 '8e63b7ec07555fd30ea2c22ed7f070e1b692fd2c9fbb60a3c8e0ddd411bb6477'

  # sourceforge.net/avogadro was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avogadro/Avogadro-#{version}.dmg.zip"
  appcast 'https://sourceforge.net/projects/avogadro/rss',
          checkpoint: 'b4c194124e797b2c1962828bbbb16c54c624c9f38191bebcb6770259739208df'
  name 'Avogadro'
  homepage 'http://avogadro.openmolecules.net/'

  app 'Avogadro.app'
end
