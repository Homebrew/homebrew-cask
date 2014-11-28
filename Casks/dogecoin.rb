cask :v1 => 'dogecoin' do
  version '1.8.0'
  sha256 '905ae1eba55294dfd32b6e3ffb357010d04b564455434d918c863fe55c2be968'

  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-mac.zip"
  homepage 'http://dogecoin.com/'
  license :oss

  app 'Dogecoin-Qt.app'
end
