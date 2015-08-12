cask :v1 => 'bmglyph' do
  version '2.1.3'
  sha256 '05bd2a93ef9e32b9e25941d369ca47c5f03dfb2ea35b56c8ba7bfd9178c82733'

  url "http://www.bmglyph.com/application/bmGlyph#{version.delete('.')}/bmGlyph.app.zip"
  name 'bmGlyph'
  appcast 'http://www.bmglyph.com/application/bmGlyphVersion.xml',
          :sha256 => '2f82a077810a75271332b13d64727bc8fdbc3c396b4f14e0f771573748f0a124',
          :format => :sparkle
  homepage 'http://www.bmglyph.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :x86_64

  app 'bmGlyph.app'
end
