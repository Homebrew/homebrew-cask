class MacupdateDesktop < Cask
  version '6.0.1'
  sha256 '30014e0bb75c7b1b74a70107ce24ccebef7db77a404411b2fa1fd1aee58f0477'

  homepage 'https://www.macupdate.com/desktop'
  url "http://dl.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml'

  link 'MacUpdate Desktop.app'
  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.macupdate.desktop6', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
