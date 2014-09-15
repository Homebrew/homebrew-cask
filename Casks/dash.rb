class Dash < Cask
  version 'latest'
  sha256 :no_check

  url 'http://kapeli.com/Dash.zip'
  appcast 'http://kapeli.com/Dash.xml'
  homepage 'http://kapeli.com/dash'

  app 'Dash.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.kapeli.dash', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
