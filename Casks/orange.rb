cask :v1 => 'orange' do
  version '2.7.8-2576588'
  sha256 'fef8b061a0a2b928b6b950825a2ab28c6cd351d1a25fe3ac00f17883ed5eafa0'

  url "http://orange.biolab.si/download/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
