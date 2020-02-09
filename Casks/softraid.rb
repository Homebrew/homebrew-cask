cask 'softraid' do
  version '5.8.2'
  sha256 '0b060beb42830b67b20e2070c3849b197ba2567dacc0fe6739728ffc26f0fbd1'

  # download.owcdigital.com/softraid was verified as official when first introduced to the cask
  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
