class LittleSnitch < Cask
  url 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.3.dmg'
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  version '3.3'
  sha256 '1b749018c47f96db1f0f710b0447b36e111c045cbd76f00493659b62df461234'
  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
