class Node < Cask
  version '0.10.29'
  sha256 'fda80c7b09d55079b6d8082310a491695e7d76fce22595c229a20152936bfab0'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'

  install  "node-v#{version}.pkg"
  uninstall :pkgutil => 'org.nodejs'
end
