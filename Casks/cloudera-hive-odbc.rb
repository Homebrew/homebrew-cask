cask 'cloudera-hive-odbc' do
  version '2.5.24,1017'
  sha256 '0a4888384a642fdfa7623609605774ea712ca2986d3a493731d092381a68137f'

  url "https://downloads.cloudera.com/connectors/hive_odbc_#{version.before_comma}.#{version.after_comma}/OSX/ClouderaHiveODBC.dmg"
  name 'Cloudera ODBC Driver for Hive'
  homepage 'https://www.cloudera.com/'

  pkg 'ClouderaHiveODBC.pkg'

  uninstall pkgutil: 'cloudera.hiveodbc'

  caveats <<~EOS
    For configuration instructions, see

      /opt/cloudera/hiveodbc/Readme.txt
  EOS
end
