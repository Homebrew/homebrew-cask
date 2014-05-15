class Frizzix < Cask
  url 'http://mac.frizzix.de/downloads/currentVersion.dmg'
  appcast 'http://frizzix.de/downloads/FrizzixUpdate.xml'
  homepage 'http://mac.frizzix.de/'
  version 'latest'
  sha256 :no_check
  link 'Frizzix.app'
end
