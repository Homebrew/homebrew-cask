cask 'bmglyph' do
  version '2.2.0'
  sha256 'b4e42720274ec4825651d5e6376c7e9d80d62770edd5d9f4dc5dc8e24f3fe3fe'

  url "http://www.bmglyph.com/application/bmGlyph.#{version}.zip"
  appcast 'http://www.bmglyph.com/application/bmGlyphVersion.xml',
          :sha256 => '43981d6f100374c4a14c750865f0479407101aea3288fb0ae3ee93d9e54dfc6a'
  name 'bmGlyph'
  homepage 'http://www.bmglyph.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :x86_64

  app 'bmGlyph.app'
end
