class Daisydisk < Cask
  url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  homepage 'http://www.daisydiskapp.com'
  version 'latest'
  sha256 :no_check
  link 'DaisyDisk.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.daisydiskapp.DaisyDiskStandAlone', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
