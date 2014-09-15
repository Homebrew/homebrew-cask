class Alfred < Cask
  version '2.5_295'
  sha256 '5ba0aeaad8c2550914b9704d8e1f8e121166ffeb3a85a78acafd85e152766e05'

  url 'https://cachefly.alfredapp.com/Alfred_#{version}.zip'
  homepage 'http://www.alfredapp.com/'

  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.runningwithcrayons.alfred-2', 'suppressMoveToApplications', '-bool', 'true'
  end
end
