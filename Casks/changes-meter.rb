class ChangesMeter < Cask
  version 'latest'
  sha256 :no_check

  url 'http://intuiware.com/downloads/changes-meter'
  homepage 'http://intuiware.com/apps/changes-meter'

  app 'Changes Meter.app'
  postflight do
    # Don't ask to move the app bundle to /Applications
    system %Q{/usr/bin/defaults write com.intuiware.ChangesMeter moveToApplicationsFolderAlertSuppress -bool true}
  end
end
