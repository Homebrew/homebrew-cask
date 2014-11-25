cask :v1 => 'foldingtext' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  homepage 'http://www.foldingtext.com'
  license :unknown

  app 'FoldingText.app'
end
