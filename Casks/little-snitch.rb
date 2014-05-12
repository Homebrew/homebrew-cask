class LittleSnitch < Cask
  url 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.3.1.dmg'
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  version '3.3.1'
  sha256 '6362d44dd8c4073647eeca361ed9b512cf9a30492b01b7adc98a82c979ecec9e'
  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
