cask 'glyphs' do
  version '2.2.2-827'
  sha256 'd568094e9061c76cc84a11f271f33abf0e3b4d135e57a4430ac972f996722732'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '2980985be44b73e6c8e61916f1b56bf2c431a4376ca71a38474dd3ce9db5697b'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
