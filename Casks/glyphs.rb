cask 'glyphs' do
  version '2.2.2-827'
  sha256 'd568094e9061c76cc84a11f271f33abf0e3b4d135e57a4430ac972f996722732'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '56b259d5ab82450737a9e36409fdb4bf26956d4e686cf8a19c7540f93c744871'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
