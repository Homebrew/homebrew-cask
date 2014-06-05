class Hockeyapp < Cask
  url 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1'
  homepage 'http://hockeyapp.net/releases/mac/'
  version 'latest'
  sha256 :no_check
  link 'HockeyApp.app'
  binary 'HockeyApp.app/Contents/Resources/puck'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hockeyapp.mac', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
