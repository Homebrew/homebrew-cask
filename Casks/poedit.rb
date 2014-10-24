class Poedit < Cask
  version '1.6.9'
  sha256 '401a917bee98994d6455e8d56c53b4ac04b2cf8a5abc0be4466c12f3b2a2a0ab'

  url "http://poedit.net/dl/Poedit-#{version}.zip"
  appcast 'http://releases.poedit.net/appcast-osx',
          :sha256 => '62ecfe8924895914af225d18c6b9ff199e4ecadbabd02301519070cf8382113e'
  homepage 'http://www.poedit.net'
  license :unknown

  app 'Poedit.app'
end
