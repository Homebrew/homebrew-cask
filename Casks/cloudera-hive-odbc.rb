cask 'cloudera-hive-odbc' do
  version '2.5.22,1014'
  sha256 'c9beae779160e9fae2be6fab27a1f1308a72f0b8a7341e02ce7a625653dbb4a3'

  url "https://downloads.cloudera.com/connectors/hive_odbc_#{version.before_comma}.#{version.after_comma}/OSX/ClouderaHiveODBC.dmg"
  name 'Cloudera ODBC Driver for Hive'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaHiveODBC.pkg'

  uninstall pkgutil: 'cloudera.hiveodbc'

  caveats <<-EOS.undent
    For configuration instructions, see

      /opt/cloudera/hiveodbc/Readme.txt
  EOS
end
