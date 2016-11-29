cask 'hortonworks-hive-odbc' do
  version '2.1.2'
  sha256 'eca2b3fc4a1f220f8fc34ad00b9a49a85703204a22dc5451dfb61dc792090fff'

  url "http://public-repo-1.hortonworks.com/HDP/hive-odbc/#{version}.1002/Mac_OS_X/hive-odbc-native.dmg"
  name 'Hortoworks ODBC Driver for Hive'
  homepage 'https://hortonworks.com/'

  pkg 'hive-odbc-native.pkg'

  uninstall pkgutil: 'hortonworks.hiveodbc'

  caveats <<-EOS.undent
    For configuration instructions, see

      /opt/hortonworks/hiveodbc/Readme.txt
  EOS
end
