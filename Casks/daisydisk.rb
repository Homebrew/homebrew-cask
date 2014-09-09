class Daisydisk < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  appcast 'http://www.daisydiskapp.com/downloads/appcastFeed.php'
  homepage 'http://www.daisydiskapp.com'

  link 'DaisyDisk.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.daisydiskapp.DaisyDiskStandAlone', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
