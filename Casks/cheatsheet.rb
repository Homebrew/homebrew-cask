class Cheatsheet < Cask
  url 'http://www.cheatsheetapp.com/CheatSheet/download.php'
  appcast 'http://mediaatelier.com/CheatSheet/feed.php'
  homepage 'http://www.cheatsheetapp.com/CheatSheet/'
  version 'latest'
  sha256 :no_check
  link 'CheatSheet.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.mediaatelier.CheatSheet', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
