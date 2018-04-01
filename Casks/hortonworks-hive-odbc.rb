cask 'hortonworks-hive-odbc' do
  version '2.1.10.1014'
  sha256 '76a021d6fd543ed2f6f2210f6756464186db88ccf680e31b37ed17d6a0d3b250'

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
