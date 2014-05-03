class Hive < Cask
  url 'https://github.com/hivewallet/hive-osx/releases/download/1.2.1/Hive-1.2.1.zip'
  homepage 'http://www.hivewallet.com'
  version '1.2.1'
  sha256 'eab97d7a1800e6ba369403c73336a531b90e8c19de8c3fc84372c40779f3f918'
  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
