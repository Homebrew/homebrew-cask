class Soulver < Cask
  url 'http://www.acqualia.com/files/download.php?product=soulver'
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml'
  homepage 'http://www.acqualia.com/soulver/'
  version 'latest'
  sha256 :no_check
  link 'Soulver.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.acqualia.soulver', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
