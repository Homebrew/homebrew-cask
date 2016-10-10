cask 'bmglyph' do
  version '2.2.0'
  sha256 'b4e42720274ec4825651d5e6376c7e9d80d62770edd5d9f4dc5dc8e24f3fe3fe'

  url "https://www.bmglyph.com/application/bmGlyph.#{version}.zip"
  appcast 'https://www.bmglyph.com/application/bmGlyphVersion.xml',
          checkpoint: 'a758ecf728343284d3271c230483f31ba5c0165e79c0462c83690a9b7fe0039e'
  name 'bmGlyph'
  homepage 'https://www.bmglyph.com/'

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'bmGlyph.app'
end
