class Rethinkdb < Cask
  version '1.14.1'
  sha256 'a1b79e4916295e783bfd643e615f73a439a609dffd9a4cb9abe3a1170bfe5764'

  url "http://download.rethinkdb.com/osx/rethinkdb-#{version}.dmg"
  homepage 'http://www.rethinkdb.com'

  pkg "rethinkdb-#{version}.pkg"
  uninstall :script  => { :executable => 'uninstall-rethinkdb.sh' },
            :pkgutil => 'rethinkdb'
end
