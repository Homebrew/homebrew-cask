class LittleSnitch < Cask
  version '3.3.4'
  sha256 '19dfcd33594fc14be321c3f54651059029b73f715158e0498ba01ceb69bf6c4a'

  url "http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
