class Node < Cask
  url 'http://nodejs.org/dist/v0.10.23/node-v0.10.23.pkg'
  homepage 'http://nodejs.org'
  version '0.10.23'
  sha1 'a7711fbb958350011641c218dae64c0c6f1f80a8'
  install  'node-v0.10.23.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
