cask 'softraid' do
  version '5.8.1'
  sha256 '8e94281740c1845bd06ae6f0f8c5470c64918ce8bf9dc6613a80a45e4250a300'

  # download.owcdigital.com/softraid was verified as official when first introduced to the cask
  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
