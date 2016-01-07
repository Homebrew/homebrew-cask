cask 'foldingtext' do
  version '2.1.1'
  sha256 '7cdef677ccf9df331baf1650d2fded5ca305116c8cf74c7d8969318f2f7b9666'

  # amazonaws.com is the official download host per the appcast feed
  url "https://FoldingText.s3.amazonaws.com/FoldingText-#{version}.dmg"
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          :sha256 => '837cd66a00b3d55670ae49ff0d786b980be5ed2517aab352c285e04c189a646a'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
