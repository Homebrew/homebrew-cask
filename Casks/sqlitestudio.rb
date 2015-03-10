cask :v1 => 'sqlitestudio' do
  version '3.0.3'
  sha256 '5b5e5dd370467ec2d3c0a6c2d1a1d01d2346ad10cbc322a2534fb5ec75579a87'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  homepage 'http://sqlitestudio.pl'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SQLiteStudio.app'
end
