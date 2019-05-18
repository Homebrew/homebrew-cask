cask 'softraid' do
  version '5.7.5'
  sha256 '2d3914eadf524fc7e272ad50ffd3b742ded45b6c3757a452e8278a87d9ffdf1a'

  # s3.amazonaws.com/download.owcdigital.com/softraid was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID_#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
  app "SoftRAID #{version}/SoftRAID Easy Setup.app"
end
