cask :v1 => 'frizzix' do
  version :latest
  sha256 :no_check

  url 'http://mac.frizzix.de/downloads/currentVersion.dmg'
  appcast 'http://frizzix.de/downloads/FrizzixUpdate.xml'
  homepage 'http://mac.frizzix.de/'
  license :unknown    # todo: improve this machine-generated value

  app 'Frizzix.app'
end
