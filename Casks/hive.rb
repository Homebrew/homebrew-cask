class Hive < Cask
  url 'https://github.com/hivewallet/hive-osx/releases/download/1.3.1/Hive-1.3.1.zip'
  homepage 'http://www.hivewallet.com'
  version '1.3.1'
  sha256 '767c25887ac701d67a46cf539a98d34ff3d2b7e64d33a6d8e1b311c685892349'
  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
