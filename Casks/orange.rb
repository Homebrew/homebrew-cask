cask :v1 => 'orange' do
  version '2.7.8-dcf9af9'
  sha256 '137a677c76c21be64e4b1e6ba3b4ea384f87b6fdaeb91afc0c52e7cfb6ca33c6'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
