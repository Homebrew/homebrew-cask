class Alfred < Cask
  version '2.4_278'
  sha256 '4cd7fd4a9fb0168649dcf7cb68e2e247fe2a313630063d6222a7276fcfba31bb'

  url 'http://cachefly.alfredapp.com/Alfred_2.4_278.zip'
  homepage 'http://www.alfredapp.com/'

  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.runningwithcrayons.alfred-2', 'suppressMoveToApplications', '-bool', 'true'
  end
end
