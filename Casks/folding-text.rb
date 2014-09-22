class FoldingText < Cask
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  homepage 'http://www.foldingtext.com'

  app 'FoldingText.app'
end
