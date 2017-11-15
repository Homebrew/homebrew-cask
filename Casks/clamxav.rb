cask 'clamxav' do
  version '2.15.4_3560'
  sha256 '17f11201263ed447d6de05c20a62ec1f8d0a9729f1a72fed1f16b4db8abf4d0a'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: '16f5148722ec1c74fa14d2924aacb9101256e1c0da68575ed52f8e4d8b8a8f77'
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
