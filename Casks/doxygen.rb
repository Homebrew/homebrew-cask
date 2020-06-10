cask 'doxygen' do
  version '1.8.18'
  sha256 '472d6bbf61621a3c3a7f9492ae604c2befb58a4b18d144166a674f398734864b'

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast 'https://www.doxygen.nl/download.html'
  name 'Doxygen'
  homepage 'https://www.doxygen.nl/'

  app 'Doxygen.app'
end
