cask 'airvpn' do
  version '2.12.4'
  sha256 '4c0c91086fe6bda142f6cc28eb80dcb1452a9e00294f82228b8625c1ffc98760'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=installer.pkg&version=#{version}"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'

  pkg 'airvpn_osx_x64_installer.pkg'
  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'

  uninstall quit:    'com.airvpn.client',
            pkgutil: 'com.airvpn.client'
end
