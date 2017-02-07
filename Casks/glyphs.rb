cask 'glyphs' do
  version '2.4.1-971'
  sha256 '02842b3dd44c73ccfcdacb0714c0825e6cc459c31b7d9f2a5f5fe172e9207a54'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          checkpoint: 'f54781e6536cd869faa6151a51c827937b2d3790532a51fc257c255fdf60780b'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com/'

  auto_updates true

  app 'Glyphs.app'
end
