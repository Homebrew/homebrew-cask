cask :v1 => 'glyphs' do
  version '2.1.1-768'
  sha256 '0f7ef4552a9ebde795231c49929b027b00d63c3365d74a4e905ba19b5f6f1133'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  appcast "http://updates.glyphsapp.com/appcast#{version.to_i}.xml",
          :sha256 => '044bc9b5748222115bc8fb8c783b141958190e3377730dd69d004fbdff3eee9b',
          :format => :sparkle
  license :commercial

  app 'Glyphs.app'
end
