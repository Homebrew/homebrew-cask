class Clamxav < Cask
  version '2.6.4'
  sha256 'bbde8181307566bd592930f7318a7c43e253788bf44bab9bae1140b1e50e694f'

  url "http://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'http://www.clamxav.com/sparkle/profileInfo.php'
  homepage 'http://www.clamxav.com/'
  license :unknown

  app 'ClamXav.app'
  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'uk.co.markallan.clamxav', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end

  zap :delete => [
                  '~/Library/Caches/uk.co.markallan.clamxav',
                  '~/Library/Logs/clamXav-scan.log',
                  # todo glob/expand needed here
                  '~/Library/Logs/clamXav-scan.log.0.bz2',
                 ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
