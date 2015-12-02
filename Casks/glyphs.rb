cask :v1 => 'glyphs' do
  version '2.2.2-822'
  sha256 '13e71a8edae377cdb5a8773829cc17e599114ab9e8c3502a305cc1d9ea6c02db'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  appcast "http://updates.glyphsapp.com/appcast#{version.to_i}.xml",
          :sha256 => '0a9a4017b75917044ab9b33428ee6b6b9123cab29ab9c8229eeecc005e9c75e1',
          :format => :sparkle
  license :commercial

  app 'Glyphs.app'
end
