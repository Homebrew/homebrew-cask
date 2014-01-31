class Daisydisk < Cask
  url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  homepage 'http://www.daisydiskapp.com'
  version 'latest'
  no_checksum
  link 'DaisyDisk.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.daisydiskapp.DaisyDiskStandAlone moveToApplicationsFolderAlertSuppress -bool true'
  end
end
