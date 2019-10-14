cask 'softraid' do
  version '5.8'
  sha256 'ec5e4771e20a0a2d218c1c1d46b225148dc6465e6ceb556815404a08ce63348e'

  # download.owcdigital.com/softraid was verified as official when first introduced to the cask
  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
