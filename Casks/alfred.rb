class Alfred < Cask
  version '2.3_264'
  sha256 'a32565cdb1673f4071593d4cc9e1c26bc884218b62fef8abc450daa47ba8fa92'

  url 'http://cachefly.alfredapp.com/Alfred_2.3_264.zip'
  homepage 'http://www.alfredapp.com/'

  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.runningwithcrayons.alfred-2', 'suppressMoveToApplications', '-bool', 'true'
  end
end
