cask 'lucidor' do
  version '0.9.12-1'
  sha256 '028091852d3dc66b7984faf7e0088e5263456c65406629c7cd2b1332ab2e9203'

  url "http://lucidor.org/get.php?id=lucidor-#{version}.dmg"
  name 'Lucidor'
  homepage 'http://lucidor.org/lucidor/'

  app 'Lucidor.app'
end
