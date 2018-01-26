cask 'clamxav' do
  version '2.16_3589'
  sha256 '922da8966da99d5a81103c92d154a9c84d2c8666fa89238bbb3e2ffcddb86ab4'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: '3eb1132b9d0c9fa95b584e62589505b3d4ddd4963c809e7ef142642d9c8ff106'
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
