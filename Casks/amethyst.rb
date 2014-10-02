class Amethyst < Cask
  version '0.9.1'
  sha256 '2d3f036ef3039e2fcac7523127b96e7e34cf3c9873b6072a18f7527c74325659'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'http://ianyh.github.io/Amethyst/appcast.xml'
  homepage 'http://ianyh.com/amethyst'
  license :oss

  app 'Amethyst.app'
end
