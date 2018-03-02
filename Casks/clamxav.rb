cask 'clamxav' do
  version '2.17_3603'
  sha256 '55849ec74a97283710699d62ed8fbbc421045ffd01bd1778b33dbc6002d6328f'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'fcb7e4e4e7189baf1f1a78f248a4183c0edfb7ce66f8429f86c552dafc63e884'
  name 'ClamXAV'
  homepage 'https://www.clamxav.com/'

  app 'ClamXAV.app'

  zap trash: [
               '~/Library/Caches/uk.co.markallan.clamxav',
               '~/Library/Logs/clamXav-scan.*',
             ]

  caveats do
    # this happens sometime after installation, but still worth warning about
    files_in_usr_local
  end
end
