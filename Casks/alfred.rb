class Alfred < Cask
  version '2.4_279'
  sha256 '5faaa5e7029adb6a884433c3c442440cee6398241bc8098f02186e5e1f010dea'

  url 'http://cachefly.alfredapp.com/Alfred_2.4_279.zip'
  homepage 'http://www.alfredapp.com/'

  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.runningwithcrayons.alfred-2', 'suppressMoveToApplications', '-bool', 'true'
  end
end
