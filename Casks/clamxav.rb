cask 'clamxav' do
  version '2.18.1_3610'
  sha256 'a51284f640a1e0b95cce95d90df6031c4d3e543f1d6e109b980102a26fbb30e9'

  url "https://www.clamxav.com/downloads/ClamXAV_#{version}.zip"
  appcast 'https://www.clamxav.com/sparkle/appcast.xml',
          checkpoint: 'c0b3e67fba1246d43d60a05490777e8a8a7a73af3a50c7521b48d3b2f3fcdd8e'
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
