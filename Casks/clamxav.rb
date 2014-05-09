class Clamxav < Cask
  url 'http://www.clamxav.com/downloads/ClamXav_2.6.2.dmg'
  homepage 'http://www.clamxav.com/'
  version '2.6.2'
  sha256 'e401d42a603c3c757504a327443e348eb9bb233748ae01fc8ec71ab599b44814'
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
