cask :v1 => 'gqrx' do
  version '2.2.0'
  sha256 'b4d81d542ea095bb882d465461d33f75ace2fca8806f8074464e9a586314ed07'

  url "https://downloads.sourceforge.net/project/gqrx/#{version}/gqrx-#{version}.dmg"
  homepage 'http://gqrx.dk/'
  license :oss

  app 'Gqrx.app'
end
