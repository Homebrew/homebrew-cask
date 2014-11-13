cask :v1 => 'rethinkdb' do
  version '1.15.1'
  sha256 'f16ec6cd619d704913e93ac3800d1c7ce1fe7390dd9ae81fb7a964d3b58a04f2'

  url "http://download.rethinkdb.com/osx/rethinkdb-#{version}.dmg"
  homepage 'http://www.rethinkdb.com'
  license :affero

  pkg "rethinkdb-#{version}.pkg"
  uninstall :script  => { :executable => 'uninstall-rethinkdb.sh' },
            :pkgutil => 'rethinkdb'
end
