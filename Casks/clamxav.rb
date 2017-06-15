cask 'clamxav' do
  version '2.14_3295'
  sha256 '30a9a5243122f588b36e43c6696f91dade776981a49782eb8e9a02044c76a2aa'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'd0bb80720f112c0eac3bdea9edb24a8c715ce89a328e4a63c39954023cdc14b7'
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
