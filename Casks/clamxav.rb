cask :v1 => 'clamxav' do
  version '2.7.3'
  sha256 'dc1197a5ec6ba935eeeeac20ed6e2196796ab6c9526efb72d3e8e2bd7939a34e'

  url "http://www.clamxav.com/downloads/ClamXav_#{version}.dmg"
  appcast 'http://www.clamxav.com/sparkle/profileInfo.php',
          :sha256 => '3c17bec76fb79888947597a5b3a92f0319ca21455349701e0d78d4f24489e6ac'
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
