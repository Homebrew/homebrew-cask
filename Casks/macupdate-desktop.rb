class MacupdateDesktop < Cask
  version '6.0'
  sha256 '5d1b967e20a5c94f37010da576a87f17a49beadae6eac5dab253c605fd3ed338'

  homepage 'https://www.macupdate.com/desktop'
  url 'http://dl.macupdate.com/MacUpdateDesktop6.zip'
  appcast 'https://www.macupdate.com/desktop/updates.xml'

  link 'MacUpdate Desktop.app'
  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.macupdate.desktop6', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
