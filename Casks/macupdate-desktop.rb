class MacupdateDesktop < Cask
  version '6.0.2'
  sha256 '1aa04e0bec920f28af5417a2b875e40af832d5303a29dca27e527e30c4db42f5'

  homepage 'https://www.macupdate.com/desktop'
  url "http://dl.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml'

  app 'MacUpdate Desktop.app'
  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.macupdate.desktop6', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
