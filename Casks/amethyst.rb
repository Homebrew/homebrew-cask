class Amethyst < Cask
  version '0.9'
  sha256 '35b83f76977338b9fb3742c963ebcbf7820a44568303b1b61212022c80535d9c'

  url "http://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'http://ianyh.github.io/Amethyst/appcast.xml'
  homepage 'http://ianyh.com/amethyst'
  license :oss

  app 'Amethyst.app'
end
