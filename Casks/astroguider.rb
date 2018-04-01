cask 'astroguider' do
  version '1.8'
  sha256 '23a564dad7cfe21ad89f2d34cad80b3771c070fc5048015a44df91765a740b96'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end
