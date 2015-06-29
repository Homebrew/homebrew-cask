cask :v1 => 'clamxav' do
  version '2.8.1'
  sha256 'c75f73348b94658210263ee3afa07da53e54884a07257aa707fd41226be24490'

  url "https://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'https://www.clamxav.com/sparkle/profileInfo.php',
          :sha256 => '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
  name 'ClamXav'
  homepage 'https://www.clamxav.com/'
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
