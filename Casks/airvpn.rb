cask 'airvpn' do
  version '2.10'
  sha256 '2ab80137f9a80b0c8dcd549c56b66ca74c8aa6fd03156f6d665f18da949ce055'

  url "https://airvpn.org/repository/#{version}/airvpn_osx_x64_installer.pkg"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'
  license :oss

  pkg 'airvpn_osx_x64_installer.pkg'
  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'

  uninstall quit:    'com.airvpn.client',
            pkgutil: 'com.airvpn.client'
end
