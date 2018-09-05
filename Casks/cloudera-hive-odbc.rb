cask 'cloudera-hive-odbc' do
  version '2.5.25,1020'
  sha256 'e9c13853068066fb8e24480774a40ea4bc709d1f3acc7e566cd8cd124d617f2c'

  url "https://downloads.cloudera.com/connectors/hive-#{version.before_comma}.#{version.after_comma}/OSX/ClouderaHiveODBC.dmg"
  name 'Cloudera ODBC Driver for Hive'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaHiveODBC.pkg'

  uninstall pkgutil: 'cloudera.hiveodbc'

  caveats <<~EOS
    For configuration instructions, see

      /opt/cloudera/hiveodbc/Readme.txt
  EOS
end
