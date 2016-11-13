cask 'astroguider' do
  version '1.5'
  sha256 '3fcb7ba35131f532db341fc2970512e1b1cdc161228e092de8786299d8b68c9c'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu'

  app 'AstroGuider.app'
end
