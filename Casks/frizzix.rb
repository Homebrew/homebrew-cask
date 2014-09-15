class Frizzix < Cask
  version 'latest'
  sha256 :no_check

  url 'http://mac.frizzix.de/downloads/currentVersion.dmg'
  appcast 'http://frizzix.de/downloads/FrizzixUpdate.xml'
  homepage 'http://mac.frizzix.de/'

  app 'Frizzix.app'
end
