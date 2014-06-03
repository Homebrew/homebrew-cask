class ChangesMeter < Cask
  url 'http://intuiware.com/downloads/changes-meter'
  homepage 'http://intuiware.com/apps/changes-meter'
  version 'latest'
  sha256 :no_check
  link 'Changes Meter.app'
  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.intuiware.ChangesMeter moveToApplicationsFolderAlertSuppress -bool true'
  end
end
