cask 'glyphs' do
  version '2.4.1-956'
  sha256 '6acdd4765bfcecbaf8c709717e3c87092f4537c089882b7f2d0a29a19df981f4'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '621a312f3c42b59ff86d55f88e802bfe6084f827e4890aed1cd722d029a4d5b7'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com/'

  auto_updates true

  app 'Glyphs.app'
end
