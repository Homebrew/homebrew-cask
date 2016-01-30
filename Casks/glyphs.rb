cask 'glyphs' do
  version '2.2.2-827'
  sha256 'd568094e9061c76cc84a11f271f33abf0e3b4d135e57a4430ac972f996722732'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'a9dbabcdfbdbe8309da49a2eec42ae2cc7487b7c7ada42fff0b11a2f1a3bb97b'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
