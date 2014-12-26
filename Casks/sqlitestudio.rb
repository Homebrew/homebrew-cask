cask :v1 => 'sqlitestudio' do
  version '2.1.5'
  sha256 '7df2d3bc8a4aafac738b7b412f2bde82f2b1114dc30f173363ec28ae5514f882'

  url "http://sqlitestudio.pl/files/free/stable/macosx/sqlitestudio-#{version}.zip"
  homepage 'http://sqlitestudio.pl'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SQLiteStudio.app'
end
