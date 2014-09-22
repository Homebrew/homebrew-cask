class Iexplorer < Cask
  version '3.5.0.0'
  sha256 'b9423952473492b035518c80617b05b31045cb6eeeeac43417b1949c1f4ef510'

  homepage 'http://www.macroplant.com/'
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml'
  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"

  app 'iExplorer.app'
end
