cask :v1 => 'calibre2opds' do
  version '3.3-246'
  sha256 '7a91b4cc5215ae337f0581e54db7c507ec7f463c87c5237e186168bf4fa9522d'

  url "https://calibre2opds.googlecode.com/files/calibre2opds-#{version}.dmg"
  homepage 'http://calibre2opds.com/'
  license :oss

  app 'Calibre2Opds.app'
end
