class Daisydisk < Cask
  if MacOS.version >= :lion
    url 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
    version 'latest'
    no_checksum
  else
    url 'http://www.daisydiskapp.com/downloads/DaisyDisk_2_1_2.dmg'
    version '2.1.2'
    sha1 '584eb479c41e2e73142fd69ce77bc57470d718de'
  end
  homepage 'http://www.daisydiskapp.com'
  link 'DaisyDisk.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.daisydiskapp.DaisyDiskStandAlone moveToApplicationsFolderAlertSuppress -bool true'
  end
end
