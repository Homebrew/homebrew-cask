cask 'eddie' do
  version '2.15.2'
  sha256 'bd5588d665d60a503c9e29b7831d7e16f8d9ca79f83c4ba100eedd381942fd19'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  name 'Air VPN'
  name 'Eddie'
  homepage 'https://airvpn.org/macosx/'

  app 'Eddie.app'

  uninstall quit: 'com.eddie.client'
end
