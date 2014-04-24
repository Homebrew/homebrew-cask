class Hive < Cask
  url 'https://github.com/hivewallet/hive-osx/releases/download/1.2/Hive-1.2.zip'
  homepage 'http://www.hivewallet.com'
  version '1.2'
  sha256 '512b5afe0135a87f10a2aa484506d2d38731960130f875de358023074d2ca19a'
  link 'Hive.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hivewallet.Hive', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
