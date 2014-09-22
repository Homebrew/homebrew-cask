class Poedit < Cask
  version '1.6.6'
  sha256 '2e1dcbea9867a38720f1d86520b2279d2c4f0857e9da9c6aac4eec0907891234'

  url "http://poedit.net/dl/Poedit-#{version}.zip"
  appcast 'http://releases.poedit.net/appcast-osx'
  homepage 'http://www.poedit.net'

  app 'Poedit.app'
end
