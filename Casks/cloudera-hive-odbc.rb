cask :v1 => 'cloudera-hive-odbc' do
  version '2.5.5'
  sha256 'cf31ace79ca995e8b7b57f1b49761777168c9f4b103092a74f6cb111084d71d8'

  url "https://downloads.cloudera.com/connectors/hive-#{version}.1006/MacOSX/ClouderaHiveODBC.dmg"
  homepage 'http://www.cloudera.com'
  license :unknown

  pkg 'ClouderaHiveODBC.pkg'

  uninstall :pkgutil => 'cloudera.hiveodbc'
  caveats <<-EOS.undent
    For configuration instructions, see

      /opt/cloudera/hiveodbc/Readme.txt
  EOS
end
