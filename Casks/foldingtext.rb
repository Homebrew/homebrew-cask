cask 'foldingtext' do
  version '2.1.1'
  sha256 '7cdef677ccf9df331baf1650d2fded5ca305116c8cf74c7d8969318f2f7b9666'

  # amazonaws.com/foldingtext was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          checkpoint: 'bc16b2b5bf258bd70244286243231f6487248b676f708cc95e6d81d333df416d'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
