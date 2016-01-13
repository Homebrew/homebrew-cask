cask 'glyphs' do
  version '2.2.2-827'
  sha256 'd568094e9061c76cc84a11f271f33abf0e3b4d135e57a4430ac972f996722732'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          :sha256 => '4afe4027f8cf10d147d580f4499289de9d2241528efe8354b8ae74c1952614e3'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
