class Bartender < Cask
  url 'http://www.macbartender.com/Demo/Bartender.zip'
  homepage 'http://www.macbartender.com/'
  version 'latest'
  no_checksum
  link 'Bartender.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.surteesstudios.Bartender', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
