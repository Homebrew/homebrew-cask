cask 'glyphs' do
  version '2.2.2-825'
  sha256 '709e4ec489c88f9a1b54c43b73eb8312116e1ee8f060d8d92abc119da843e0ab'

  url "https://updates.glyphsapp.com/Glyphs#{version}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml",
          :sha256 => '3405f118a2f52fe33f6deee36bc79fa1324624adf9d601cc26711c8c25478e09'
  name 'Glyphs'
  homepage 'https://www.glyphsapp.com'
  license :commercial

  app 'Glyphs.app'
end
