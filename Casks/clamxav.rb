cask 'clamxav' do
  version '2.15.1_3465'
  sha256 'd001442e28f0cfbaefc0de3c875044115808a63ab98c05cffa0c367a1689ed2b'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: '7765fff58b46046c489dd2c3a9cbedc2f8f7d35f16423ed8a1e9b84029bff4b6'
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
