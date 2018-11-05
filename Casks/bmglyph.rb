cask 'bmglyph' do
  version '2.2.3'
  sha256 '7f78050dc47087e7a14a608792cefb48d578dc3701424409497f346f3b2918ef'

  url 'https://www.bmglyph.com/application/bmGlyph.dmg'
  appcast 'https://www.bmglyph.com/'
  name 'bmGlyph'
  homepage 'https://www.bmglyph.com/'

  depends_on macos: '>= :mountain_lion'

  app 'bmGlyph.app'
end
