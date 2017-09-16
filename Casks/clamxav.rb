cask 'clamxav' do
  version '2.15_3460'
  sha256 '9505294db683380eb433d869f482493599fae9609de4cb2efc19755dafff8e35'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'e0e0c25cf3bf5fe4beef7e62b97352c620f54872324d5a33ca0e0477864a18a1'
  name 'ClamXav'
  homepage 'https://www.clamxav.com/'

  app 'ClamXav.app'

  zap delete: [
                '~/Library/Caches/uk.co.markallan.clamxav',
                '~/Library/Logs/clamXav-scan.*',
              ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
