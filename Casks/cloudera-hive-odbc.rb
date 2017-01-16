cask 'cloudera-hive-odbc' do
  version '2.5.21,1010'
  sha256 'bf180972a6d4810648c5bdbc1e3a67f56cbfd884079660914ed7cffaf8b671e1'

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
