class Clamxav < Cask
  url 'http://www.clamxav.com/downloads/ClamXav_2.6.3.dmg'
  homepage 'http://www.clamxav.com/'
  version '2.6.3'
  sha256 '34791173e31b297353025013e0296f7014e34310542a6e1cdf46e83a0254691f'
  link 'ClamXav.app'
  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'uk.co.markallan.clamxav', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
