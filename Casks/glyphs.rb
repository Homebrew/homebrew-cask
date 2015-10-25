cask :v1 => 'glyphs' do
  version '2.2.1-819'
  sha256 'a523da385f9d4683c38872e9f15e23c9219dc40aaedaa80bdf42a0ce482637d1'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  appcast "http://updates.glyphsapp.com/appcast#{version.to_i}.xml",
          :sha256 => '044bc9b5748222115bc8fb8c783b141958190e3377730dd69d004fbdff3eee9b',
          :format => :sparkle
  license :commercial

  app 'Glyphs.app'
end
