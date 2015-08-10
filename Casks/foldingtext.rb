cask :v1 => 'foldingtext' do
  version '2.0.2'
  sha256 '1719c001497303179039454bf044abccb61370aa1c38489a261718054db364dd'

  # amazonaws.com is the official download host per the appcast feed
  url "http://foldingtext.s3.amazonaws.com/FoldingText-#{version}.dmg"
  name 'FoldingText'
  appcast 'https://foldingtext.s3.amazonaws.com/FoldingText.rss',
          :sha256 => '5915bc0f4b102f040737726cb09086eef336203b78c9ea202356bc56efbec767'
  homepage 'http://www.foldingtext.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FoldingText.app'
end
