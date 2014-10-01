class Rethinkdb < Cask
  version '1.15.0'
  sha256 'aaa077a0380aced79ee60d3d34edceebe6307f445d0629925f790bc55fed696b'

  url "http://download.rethinkdb.com/osx/rethinkdb-#{version}.dmg"
  homepage 'http://www.rethinkdb.com'
  license :unknown

  pkg "rethinkdb-#{version}.pkg"
  uninstall :script  => { :executable => 'uninstall-rethinkdb.sh' },
            :pkgutil => 'rethinkdb'
end
