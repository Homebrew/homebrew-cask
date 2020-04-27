cask 'softraid' do
  version '5.8.3'
  sha256 '3c41be3134c28783cdb61229eea2e87584aff6bf3800c7169ddedfec302c78b4'

  # download.owcdigital.com/softraid/ was verified as official when first introduced to the cask
  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.owcdigital.com/softraid5/mac'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
