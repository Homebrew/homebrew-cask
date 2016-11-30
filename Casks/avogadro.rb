cask 'avogadro' do
  version '1.2.0'
  sha256 '8a9567a2f3ebf162eab8e375073ea84cd28483f004c7cd3cae33e21864615cc7'

  # sourceforge.net/avogadro was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/avogadro/Avogadro-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/avogadro/rss',
          checkpoint: 'b4c194124e797b2c1962828bbbb16c54c624c9f38191bebcb6770259739208df'
  name 'Avogadro'
  homepage 'https://avogadro.cc/wiki/Main_Page'

  app 'Avogadro.app'
end
