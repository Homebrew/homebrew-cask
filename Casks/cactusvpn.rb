class Cactusvpn < Cask
  version '2.0.1'
  sha256 '819dd58b260257e29e1b8773a75227c6b54b1ba974e120a2d8e7d3dd61ac8012'

  url 'https://files.oliverconzen.de/brew/CactusVPN-Mac-OS-v.2.0.1.pkg'
  homepage 'http://cactusvon.com'
  license :commercial

  pkg 'CactusVPN-Mac-OS-v.2.0.1.pkg'

  uninstall :pkgutil => 'com.logicnet.CactusVPN.cactusvpn.CactusVPN.pkg'
  uninstall :pkgutil => 'com.logicnet.CactusVPN.cactusvpn.hide.pkg'
end
