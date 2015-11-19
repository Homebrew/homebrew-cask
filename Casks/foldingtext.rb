cask :v1 => 'foldingtext' do
  version '2.1'
  sha256 '007e882d1d09273accf84d95ed15e89db056da9bebf81258098d3efb38ce6df2'

  # amazonaws.com is the official download host per the appcast feed
  url "http://foldingtext.s3.amazonaws.com/FoldingText-#{version}.dmg"
  name 'FoldingText'
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          :sha256 => 'edb29d497e4b36ad241ff05f35fcafb4c3712c8b1062b22a1dbd3ed8cb0354df'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
