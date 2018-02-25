cask 'eddie' do
  version '2.13.6'
  sha256 '7982140549b13b18892bbb171c7e4b2ed333c99f59b20e9d4c85fd5b047ea40f'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  name 'Air VPN'
  name 'Eddie'
  homepage 'https://airvpn.org/macosx/'

  app 'Eddie.app'

  uninstall quit: 'com.eddie.client'
end
