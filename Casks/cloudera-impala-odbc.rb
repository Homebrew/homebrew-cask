cask 'cloudera-impala-odbc' do
  version '2.5.40.1025'
  sha256 '3f6e513881f30fcce4f9cceb82e0d0b7f06dbafba9e1e872fe65e314741b6b0f'

  url "https://downloads.cloudera.com/connectors/impala_odbc_#{version}/OSX/ClouderaImpalaODBC.dmg"
  name 'Cloudera ODBC Driver for Impala'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaImpalaODBC.pkg'

  uninstall pkgutil: 'cloudera.impalaodbc'
end
