cask 'cloudera-impala-odbc' do
  version '2.5.41.1029'
  sha256 '84519e6582be94d7ac1f1fa3946da224966b4cde0f2eb566edfb864576ac90f6'

  url "https://downloads.cloudera.com/connectors/impala_odbc_#{version}/OSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
