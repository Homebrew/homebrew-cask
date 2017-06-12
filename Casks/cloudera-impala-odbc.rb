cask 'cloudera-impala-odbc' do
  version '2.5.37.1014'
  sha256 '9ef149fe28a4e0fa4c7b18dda5f078cfb10fb1e261d461af7fa7b38c6815f4fe'

  url "https://downloads.cloudera.com/connectors/impala_odbc_#{version}/OSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
