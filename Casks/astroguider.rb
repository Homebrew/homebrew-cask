cask 'astroguider' do
  version '3.9'
  sha256 '57ce3e37fe05cefbb41a236d966917944d6ae4d375a27303858b05301c64629b'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/astroguider/'
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end
