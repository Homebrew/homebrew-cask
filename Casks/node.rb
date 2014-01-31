class Node < Cask
  url 'http://nodejs.org/dist/v0.10.25/node-v0.10.25.pkg'
  homepage 'http://nodejs.org'
  version '0.10.25'
  sha1 'abab975e86250b51a7434d229d13b30acdf4e82e'
  install  'node-v0.10.25.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
