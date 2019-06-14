cask 'cloudera-impala-odbc' do
  version '2.6.5.1005'
  sha256 '9f71c60060662ef234383f619d7afc649c14018bfd697d2bad0ddf5ff8457f1b'

  url "https://downloads.cloudera.com/connectors/ClouderaImpala_ODBC_#{version}/macOS/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
