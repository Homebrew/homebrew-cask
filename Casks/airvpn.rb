cask 'airvpn' do
  version '2.12.4'
  sha256 'ab52cafc027378c8e37c4807b00377a903d82009d5c5afc53a09da5afff20311'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=installer.pkg&version=#{version}"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'

  pkg 'airvpn_osx_x64_installer.pkg'
  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'

  uninstall quit:    'com.airvpn.client',
            pkgutil: 'com.airvpn.client'
end
