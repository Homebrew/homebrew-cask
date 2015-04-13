cask :v1 => 'clamxav' do
  version '2.7.5'
  sha256 '33c6c76cb3e6f8ec9c23b521135b320ea5300910d9e929eaa0556e2bed15cbfe'

  url "http://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
          :sha256 => '02c70a63eb2b650523d6fdbba82ffb102b19676d576c4a2baa8332194828feb3'
  name 'ClamXav'
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
