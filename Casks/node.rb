class Node < Cask
  url 'http://nodejs.org/dist/v0.10.21/node-v0.10.21.pkg'
  homepage 'http://nodejs.org'
  version '0.10.21'
  sha1 'de2bd0e858f99098ef24f99f972b8088c1f0405c'
  install  'node-v0.10.21.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
