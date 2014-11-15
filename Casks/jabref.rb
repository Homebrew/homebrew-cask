cask :v1 => 'jabref' do
  version '2.10'
  sha256 'c63a49e47a43bdb026dde7fb695210d9a3f8c0e71445af7d6736c5379b23baa2'

  url "https://downloads.sourceforge.net/project/jabref/jabref/#{version}/JabRef-#{version}-OSX.zip"
  homepage 'http://jabref.sourceforge.net/'
  license :oss

  app 'JabRef.app'
end
