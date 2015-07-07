cask :v1 => 'rethinkdb' do
  version '2.0.1'
  sha256 'd5bdab6e7d347aa00b7733dc87e08a876406dee675eaae830f9d37c283350466'

  url "http://download.rethinkdb.com/osx/rethinkdb-#{version}.dmg"
  name 'RethinkDB'
  homepage 'http://www.rethinkdb.com'
  license :affero

  pkg "rethinkdb-#{version}.pkg"

  uninstall :script  => { :executable => 'uninstall-rethinkdb.sh' },
            :pkgutil => 'rethinkdb'
end
