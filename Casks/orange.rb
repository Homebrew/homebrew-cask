cask :v1 => 'orange' do
  version '2.7.8-2576588'
  sha256 'ca4e4ee9e36527245a22f5c7ab8b3de83657b83c16064984b381dca84337a54e'

  url "http://orange.biolab.si/download/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
