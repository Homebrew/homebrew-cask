class Node < Cask
  version '0.10.31'
  sha256 '450fc1ff7f3b716d01cec78826b3b708292327a34434871bafd5a05a3429756e'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'

  install  "node-v#{version}.pkg"
  uninstall :pkgutil => 'org.nodejs'
end
