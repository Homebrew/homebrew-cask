class Amethyst < Cask
  version '0.9.3'
  sha256 'e9820972bfc7e15e4dec6b96217f2e29014de9c23b2af063cc3af627f07263d2'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'http://ianyh.github.io/Amethyst/appcast.xml'
  homepage 'http://ianyh.com/amethyst'
  license :oss

  app 'Amethyst.app'
end
