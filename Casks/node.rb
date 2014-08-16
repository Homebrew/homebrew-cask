class Node < Cask
  version '0.10.30'
  sha256 'cb9d63ebf5030fb8e76b953f11a0fde04441d3a123ce5724afe342062e10e279'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'

  install  "node-v#{version}.pkg"
  uninstall :pkgutil => 'org.nodejs'
end
