cask 'cloudera-impala-odbc' do
  version '2.6.0.1000'
  sha256 'f9e40b88d10d2441e7b037b040f3d390f2cb3f3b38c599308f79468576f9a7d2'

  url "https://downloads.cloudera.com/connectors/impala_odbc_#{version}/OSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'com.cloudera.impalaodbc'
end
