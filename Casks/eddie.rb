cask 'eddie' do
  version '2.16.3'
  sha256 'f4a073d0689bd1218886883bd0a8f1a93412aba2e844e652698cdd56ff2f4fb8'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  name 'Air VPN'
  name 'Eddie'
  homepage 'https://airvpn.org/macos/'

  app 'Eddie.app'

  uninstall quit: 'com.eddie.client'
end
