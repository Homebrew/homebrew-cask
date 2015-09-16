cask :v1 => 'bmglyph' do
  version '2.2.0'
  sha256 'b4e42720274ec4825651d5e6376c7e9d80d62770edd5d9f4dc5dc8e24f3fe3fe'

  url "http://www.bmglyph.com/application/bmGlyph.#{version}.zip"
  name 'bmGlyph'
  appcast 'http://www.bmglyph.com/application/bmGlyphVersion.xml',
          :sha256 => '43c86d82a5f63b1316913b06399598e792ed2ae23e6bdc2e6e8ad98b3d7e4178',
          :format => :sparkle
  homepage 'http://www.bmglyph.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :x86_64

  app 'bmGlyph.app'
end
