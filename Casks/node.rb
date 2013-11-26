class Node < Cask
  url 'http://nodejs.org/dist/v0.10.22/node-v0.10.22.pkg'
  homepage 'http://nodejs.org'
  version '0.10.22'
  sha1 'b4433b98f87f3f06130adad410e2fb5f959bbf37'
  install  'node-v0.10.22.pkg'
  uninstall :pkgutil => 'org.nodejs'
end
