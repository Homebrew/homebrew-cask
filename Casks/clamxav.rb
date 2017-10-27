cask 'clamxav' do
  version '2.15.3_3501'
  sha256 'e781c968e79d4ce432612b11e023618be51e42678dcae72095279bb73f494c36'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'da94f5d9a2f68326d4e3cd9bc636e4d07a9fa6e56d3f03a9ccdac8f1657a3d0d'
  name 'ClamXAV'
  homepage 'https://www.clamxav.com/'

  app 'ClamXAV.app'

  zap delete: [
                '~/Library/Caches/uk.co.markallan.clamxav',
                '~/Library/Logs/clamXav-scan.*',
              ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
