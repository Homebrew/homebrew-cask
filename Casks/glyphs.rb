cask 'glyphs' do
  version '2.2.2-827'
  sha256 'd568094e9061c76cc84a11f271f33abf0e3b4d135e57a4430ac972f996722732'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'c73201e76281067f806c1293b576c24de457ebc6c6049f655d2e6fbcb4a9c483'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
