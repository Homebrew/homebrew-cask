class Sidekick < Cask
  version :latest
  sha256 :no_check

  url 'http://oomphalot.com/sidekick/release/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick'
  homepage 'http://oomphalot.com/sidekick/'

  app 'Sidekick.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.oomphalot.Sidekick', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end

end
