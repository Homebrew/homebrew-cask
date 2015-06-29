cask :v1 => 'foldingtext' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/foldingtext/FoldingText.dmg'
  name 'FoldingText'
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          :sha256 => '5915bc0f4b102f040737726cb09086eef336203b78c9ea202356bc56efbec767'
  homepage 'http://www.foldingtext.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FoldingText.app'
end
