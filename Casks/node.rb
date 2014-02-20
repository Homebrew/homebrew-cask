class Node < Cask
  url 'http://nodejs.org/dist/v0.10.26/node-v0.10.26.pkg'
  homepage 'http://nodejs.org'
  version '0.10.26'
  sha1 'ff7512f49bb9f1ec2bc3f974588421305f1e28c7'
  install  'node-v0.10.26.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
