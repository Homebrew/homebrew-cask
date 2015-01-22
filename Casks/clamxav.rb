cask :v1 => 'clamxav' do
  version '2.7.2'
  sha256 'e55298289a3bb5e8c9241a6a2c2b9b2813d4e7a4ae93d262b9a0e6a4ff1d2ce4'

  url "http://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
          :sha256 => '5c4a8349eb0d9e176d4bc022aaeab609faaaad3d278f65ec8e29cedddf79d1a3'
  homepage 'http://www.clamxav.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ClamXav.app'

  postflight do
    suppress_move_to_applications
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
