cask :v1 => 'sqlitestudio' do
  version '3.0.6'
  sha256 '15a2687efc657ecf27766c6153a952aab17adaaefaf94636567032d0d6df2f5a'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  name 'SQLiteStudio'
  homepage 'http://sqlitestudio.pl'
  license :gpl

  app 'SQLiteStudio.app'
end
