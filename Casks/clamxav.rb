cask 'clamxav' do
  version '2.18_3608'
  sha256 '76527f129fa1d695e4635366d008e0683a9ea195a5ad04a4693ffbb0a3d190bc'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'b375f71ee431356819bcce4bf01298b60e01ee486fc79991997ea014c172a8fb'
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
