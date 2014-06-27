class Dash < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://kapeli.com/Dash.zip'
  appcast 'http://kapeli.com/Dash.xml'
  homepage 'http://kapeli.com/dash'

  link 'Dash.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.kapeli.dash', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
