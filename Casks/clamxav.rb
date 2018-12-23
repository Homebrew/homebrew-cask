cask 'clamxav' do
  version '3.0.8_7687'
  sha256 '2ad7c8dcd755087a0f02fb95b3b510fef6775430823f74939b276162456af131'

  url "https://cdn.clamxav.com/ClamXAVdownloads/ClamXAV_#{version}.zip"
  appcast "https://www.clamxav.com/sparkle/appcast#{version.major}.xml"
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
