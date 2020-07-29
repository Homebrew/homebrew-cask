cask 'eddie' do
  version '2.18.9'
  sha256 'fd795535ab519e7de25e2ddfef96a5b6313c81af9c950d05dbc0337852573afd'

  # eddie.website/ was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  appcast 'https://github.com/AirVPN/Eddie/releases.atom'
  name 'Air VPN'
  name 'Eddie'
  homepage 'https://airvpn.org/macos/'

  app 'Eddie.app'

  uninstall quit: 'com.eddie.client'
end
