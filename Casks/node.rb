class Node < Cask
  url 'http://nodejs.org/dist/v0.10.24/node-v0.10.24.pkg'
  homepage 'http://nodejs.org'
  version '0.10.24'
  sha1 '74aba302d8b34e1fc93b3e0babc3f5d9bd8c09f3'
  install  'node-v0.10.24.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
