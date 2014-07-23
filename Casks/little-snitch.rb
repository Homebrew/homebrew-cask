class LittleSnitch < Cask
  version '3.3.3'
  sha256 '9a9bc01075070b5ca7af9e17591ee8b649753a9a94076c2e7b67d6e99e425450'

  url "http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
