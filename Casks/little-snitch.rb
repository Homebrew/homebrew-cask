class LittleSnitch < Cask
  version '3.3.2'
  sha256 '835395e13b9c96b0a5fa32ae9b9e196fb79fb54cb33f1861dd32d16774d7d3bd'

  url 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.3.2.dmg'
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
end
