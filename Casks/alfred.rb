class Alfred < Cask
  url 'http://cachefly.alfredapp.com/Alfred_2.1.1_227.zip'
  homepage 'http://www.alfredapp.com/'
  version '2.1.1_227'
  sha256 'd19fe7441c6741bf663521e561b842f35707b1e83de21ca195aa033cade66d1b'
  link 'Alfred 2.app'
  link 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.runningwithcrayons.alfred-2 suppressMoveToApplications -bool true'
  end
end
