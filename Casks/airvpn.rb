cask :v1 => 'airvpn' do
  version '2.9'
  sha256 '06c49f4d2b8754e7eec7687445631b36fd3352418e466b2f571dda3a3c37827b'

  url "https://airvpn.org/repository/#{version}/airvpn_osx_x64_installer.pkg"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'
  license :oss

  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'
  pkg 'airvpn_osx_x64_installer.pkg'

  uninstall :quit => 'com.airvpn.client',
            :pkgutil => 'com.airvpn.client'
end
