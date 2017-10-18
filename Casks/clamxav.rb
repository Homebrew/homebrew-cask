cask 'clamxav' do
  version '2.15.2_3471'
  sha256 '166f5ecfc101ec4aff50683dbbe96fc1947813329efb3fea63d6c5787b7e0014'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: '1d3ae4e367c7cf4fd41d742be49533165d5fa4a2b33c7d19e32717b15289f72b'
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
