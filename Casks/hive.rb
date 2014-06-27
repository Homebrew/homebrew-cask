class Hive < Cask
  version '1.3.2'
  sha256 '1a903d177315bbd9268bb9202a30c3a7b929a74b0afb8f271fd13e9c955f74f7'
  
  url 'https://github.com/hivewallet/hive-osx/releases/download/1.3.2/Hive-1.3.2.zip'
  appcast 'https://hivewallet.com/hive-osx-appcast.xml'
  homepage 'http://www.hivewallet.com'

  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
