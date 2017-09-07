cask 'cloudera-impala-odbc' do
  version '2.5.39.1020'
  sha256 '12135956a72f0bd8ec74367996cd6c2a8a065975b80cd4394b20fb366a8b8a13'

  url "https://downloads.cloudera.com/connectors/impala_odbc_#{version}/OSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
