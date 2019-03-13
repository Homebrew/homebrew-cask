cask 'cloudera-impala-odbc' do
  version '2.6.2.1002'
  sha256 '71a6cd56682ece60453a2111e6e03de469df313b45e6b22148b07a6d4e7251b4'

  url "https://downloads.cloudera.com/connectors/ClouderaImpala_ODBC_#{version}/MacOSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
