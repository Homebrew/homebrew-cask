class Node < Cask
  url 'http://nodejs.org/dist/v0.10.26/node-v0.10.26.pkg'
  homepage 'http://nodejs.org'
  version '0.10.26'
  sha256 '99b718692a77195e3aafab819b42ad7dba7e90e05a9b6f078bc5171c041331f8'
  install  'node-v0.10.26.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
