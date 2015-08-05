cask :v1 => 'ampps' do
  version '3.2'
  sha256 '43e1d0f961809555de6cd5807326b0a5cb484777d92fec23210442dfcac5a4ea'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'http://www.ampps.com'
  license :gratis

  suite 'AMPPS'
end
