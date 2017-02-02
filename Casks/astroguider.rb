cask 'astroguider' do
  version '1.7'
  sha256 'b5ae7e42ea5073657a00697b860fd495f74a75b27658ccc55156c5cad5a45e3e'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end
