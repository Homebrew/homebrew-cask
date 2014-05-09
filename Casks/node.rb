class Node < Cask
  url 'http://nodejs.org/dist/v0.10.28/node-v0.10.28.pkg'
  homepage 'http://nodejs.org'
  version '0.10.28'
  sha256 '7785c80dcdaa948df58db62fb92deaac46bedfaa8bf7677b95614d151ea80c3d'
  install  'node-v0.10.28.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
