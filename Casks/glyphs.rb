cask 'glyphs' do
  version '2.3-895'
  sha256 'f44eaaad438db4e0f854386c8d8259381a0338a2877c3f4c1cfb4aedb20b3f46'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: '1499e8ac48652748e2a2f919c1241542cc058269e8cc3341c550b143f25c6c7a'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  auto_updates true

  app 'Glyphs.app'
end
