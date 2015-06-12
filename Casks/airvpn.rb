cask :v1 => 'airvpn' do
  version '2.9'
  sha256 'd7bc9fc8d2f944a3e63f0ec0a86900952ee96bf28a6cd0293d6f53a510024f4a'

  url "https://airvpn.org/repository/#{version}/airvpn_osx_x64_installer.pkg"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'
  license :oss

  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'
  pkg 'airvpn_osx_x64_installer.pkg'

  uninstall :quit => 'com.airvpn.client',
            :pkgutil => 'com.airvpn.client'
end
