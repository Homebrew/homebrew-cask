class LittleSnitch < Cask
  url 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.1.dmg'
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  version '3.1'
  sha1 'c0e0b523976962f25588b59b1a57c68091ba947b'
  install 'Little Snitch Installer.app'
  uninstall 'Little Snitch Uninstaller.app'
end
