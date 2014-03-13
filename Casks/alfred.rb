class Alfred < Cask
  url 'http://cachefly.alfredapp.com/Alfred_2.2_243b.zip'
  homepage 'http://www.alfredapp.com/'
  version '2.2_243'
  sha256 'aa8291240d71afce02ca4e4a70933d243fb79b668d5efcd72f2633e4610b706e'
  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.runningwithcrayons.alfred-2', 'suppressMoveToApplications', '-bool', 'true'
  end
end
