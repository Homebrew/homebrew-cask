cask 'hortonworks-hive-odbc' do
  version '2.1.7.1010'
  sha256 '7b429e7288094f7c37c14d18fd653c92d990660bc958c44166a80d8003f4704b'

  url "http://public-repo-1.hortonworks.com/HDP/hive-odbc/#{version}/Mac_OS_X/hive-odbc-native.dmg"
  name 'Hortoworks ODBC Driver for Hive'
  homepage 'https://hortonworks.com/'

  pkg 'hive-odbc-native.pkg'

  uninstall pkgutil: 'hortonworks.hiveodbc'

  caveats <<~EOS
    For configuration instructions, see

      /opt/hortonworks/hiveodbc/Readme.txt
  EOS
end
