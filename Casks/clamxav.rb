cask :v1 => 'clamxav' do
  version '2.6.4'
  sha256 'bbde8181307566bd592930f7318a7c43e253788bf44bab9bae1140b1e50e694f'

  url "http://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
          :sha256 => '1f7fa2a5dfa1e59e32982721d5cf3292d1d2568ee22d802904566275b9e680e0'
  homepage 'http://www.clamxav.com/'
  license :unknown

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
