cask 'clamxav' do
  version '2.12_3050'
  sha256 'abb487c8b2c4e10b73d4a88b289f947a0b9f044862e077a304c230dadd9fc699'

  url "https://www.clamxav.com/downloads/ClamXav_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'c0bed429b19e3c7d088a0c118521f7d37a2dadf6eabedcd9f8205e41c8a320be'
  name 'ClamXav'
  homepage 'https://www.clamxav.com/'

  app 'ClamXav.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Caches/uk.co.markallan.clamxav',
                '~/Library/Logs/clamXav-scan.*',
              ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
