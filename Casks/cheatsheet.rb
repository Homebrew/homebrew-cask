class Cheatsheet < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.cheatsheetapp.com/CheatSheet/download.php'
  appcast 'http://mediaatelier.com/CheatSheet/feed.php'
  homepage 'http://www.cheatsheetapp.com/CheatSheet/'

  link 'CheatSheet.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.mediaatelier.CheatSheet', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
