cask :v1 => 'glyphs' do
  version '2.1-767'
  sha256 '72bb7cae58f6be2c53b274dc201ecd40e76faff158076a291213a543deaf9e10'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  appcast "http://updates.glyphsapp.com/appcast#{version.to_i}.xml",
          :sha256 => '044bc9b5748222115bc8fb8c783b141958190e3377730dd69d004fbdff3eee9b',
          :format => :sparkle
  license :commercial

  app 'Glyphs.app'
end
