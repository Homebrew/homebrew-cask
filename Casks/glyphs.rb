cask :v1 => 'glyphs' do
  version '2.1.1-768'
  sha256 '0f7ef4552a9ebde795231c49929b027b00d63c3365d74a4e905ba19b5f6f1133'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  appcast "http://updates.glyphsapp.com/appcast#{version.to_i}.xml",
          :sha256 => '6e50416faef5a0df87f7963e35e8475c9e6608ac28f35fd10dd9f0dfcde7a4b0',
          :format => :sparkle
  license :commercial

  app 'Glyphs.app'
end
