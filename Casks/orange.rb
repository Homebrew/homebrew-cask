cask :v1 => 'orange' do
  version '2.7.8-7887ad2'
  sha256 '312274a81c510227696dd655cc14a1fedd7029f58b67118a97ac7526af18608d'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
