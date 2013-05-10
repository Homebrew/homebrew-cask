class Frizzix < Cask
  url 'http://mac.frizzix.de/downloads/currentVersion.dmg'
  homepage 'http://mac.frizzix.de/'
  version 'latest'
  no_checksum
  link :app, 'Frizzix.app'
end
