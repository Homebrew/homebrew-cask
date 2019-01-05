cask 'clamxav' do
  version '3.0.9_7713'
  sha256 'aa4159b6e5e6388b8e708a79670fcf5a039467ced99600725d8e352128ef96af'

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
