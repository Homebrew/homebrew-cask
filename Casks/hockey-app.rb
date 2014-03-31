class HockeyApp < Cask
  url 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1?format=zip'
  homepage 'http://hockeyapp.net/releases/mac/'
  version 'latest'
  no_checksum
  link 'HockeyApp.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.hockeyapp.mac', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
