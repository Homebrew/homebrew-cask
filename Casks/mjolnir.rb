class Mjolnir < Cask
  version '0.4.2'
  sha256 '5a6aa3f5de79952a6d3680e51683ecc1ee795166ecd6448293e57376f3df3dbb'

  url "https://github.com/mjolnir-io/mjolnir/releases/download/#{version}/Mjolnir-#{version}.tgz"
  homepage 'http://mjolnir.io'
  license :oss

  app 'Mjolnir.app'
end
