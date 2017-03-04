cask 'hortonworks-hive-odbc' do
  version '2.1.5.1006'
  sha256 'bbe696f2530205149d944eb880a1653a66303d1553dd4df7371cad69d64596b1'

  url "http://public-repo-1.hortonworks.com/HDP/hive-odbc/#{version}/Mac_OS_X/hive-odbc-native.dmg"
  name 'Hortoworks ODBC Driver for Hive'
  homepage 'https://hortonworks.com/'

  pkg 'hive-odbc-native.pkg'

  uninstall pkgutil: 'hortonworks.hiveodbc'

  caveats <<-EOS.undent
    For configuration instructions, see

      /opt/hortonworks/hiveodbc/Readme.txt
  EOS
end
