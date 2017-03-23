cask 'airvpn' do
  version '2.12.4'
  sha256 '8e7eda78f51756f5da3cd903b6b2d7e1c6c8cf7363793266772b2a5f07c0b462'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=installer.pkg&version=#{version}"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'

  pkg 'airvpn_osx_x64_installer.pkg'
  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'

  uninstall quit:    'com.airvpn.client',
            pkgutil: 'com.airvpn.client'
end
