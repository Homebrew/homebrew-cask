cask 'clamxav' do
  version '3.0.3_7238'
  sha256 '0fd2ba233faba5539193ef8de1ed3f360d27541e7a3c618b52671a6570a69174'

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
