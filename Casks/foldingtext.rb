cask :v1 => 'foldingtext' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  homepage 'http://www.foldingtext.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FoldingText.app'
end
