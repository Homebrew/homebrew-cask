cask :v1 => 'node' do
  version '0.10.32'
  sha256 '3ce16fa81f47da38bcf726ef384e1bc0658d52f880d17aa17fd5b613bea035cf'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :unknown

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
