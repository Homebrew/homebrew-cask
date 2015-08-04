cask :v1 => 'bmglyph' do
  version :latest
  sha256 :no_check

  url 'http://www.bmglyph.com/application/bmGlyph.dmg'
  name 'bmGlyph'
  homepage 'http://www.bmglyph.com/'
  license :commercial

  app 'bmGlyph.app'
end
