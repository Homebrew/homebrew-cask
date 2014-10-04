class Amethyst < Cask
  version '0.9.2'
  sha256 '48f4a97b8227de22254fc49b4aaab9bed8bdb30710e46310e5f9ca731d413fa6'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'http://ianyh.github.io/Amethyst/appcast.xml'
  homepage 'http://ianyh.com/amethyst'
  license :oss

  app 'Amethyst.app'
end
