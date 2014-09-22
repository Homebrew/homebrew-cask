class ClouderaHiveOdbc < Cask
  version '2.5.5'
  sha256 'cf31ace79ca995e8b7b57f1b49761777168c9f4b103092a74f6cb111084d71d8'

  url 'https://downloads.cloudera.com/connectors/hive-2.5.5.1006/MacOSX/ClouderaHiveODBC.dmg'
  homepage 'http://www.cloudera.com'

  pkg 'ClouderaHiveODBC.pkg'
  uninstall :pkgutil => 'cloudera.hiveodbc'
  caveats do
    <<-EOS.undent
    See /opt/cloudera/hiveodbc/Readme.txt for configuration instructions.
    EOS
  end
end
