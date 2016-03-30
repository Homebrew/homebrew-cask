cask 'lucidor' do
  version '0.9.10-1'
  sha256 '21bf3eba46f5bad773b9302490ff30c3cebac7dd82b4dcdd84e83d3d861c2b62'

  url "http://lucidor.org/get.php?id=lucidor-#{version}.dmg"
  name 'Lucidor'
  homepage 'http://lucidor.org/lucidor/'
  license :gpl

  app 'Lucidor.app'
end
