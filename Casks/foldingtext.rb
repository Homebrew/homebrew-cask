cask 'foldingtext' do
  version '2.1.1'
  sha256 '7cdef677ccf9df331baf1650d2fded5ca305116c8cf74c7d8969318f2f7b9666'

  # amazonaws.com is the official download host per the appcast feed
  url "https://FoldingText.s3.amazonaws.com/FoldingText-#{version}.dmg"
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          :checkpoint => '9c337ade7a35d99473ba708045550aeeb3e8d30a94931983603b69006f28d6bb'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
