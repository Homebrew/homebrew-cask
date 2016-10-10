cask 'glyphs' do
  version '2.3.1-913'
  sha256 'b7afabe338d617476d6077879b3c35547aeaba952ba3635b0ec47d4e61dca5d1'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'a00f114fc3cac79bcdd55fde37d4411ae7ebaa10116a17f3e13a68bca4bd87fa'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'

  auto_updates true

  app 'Glyphs.app'
end
