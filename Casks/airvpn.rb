cask :v1 => 'airvpn' do
  version '2.8'
  sha256 '311babbdecef814a8c6168ee625990338489dde973bef83b3fe157db493a1cef'

  url "https://airvpn.org/repository/#{version}/airvpn_osx_x64_installer.pkg"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'
  license :oss

  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'
  pkg 'airvpn_osx_x64_installer.pkg'

  uninstall :quit => 'com.airvpn.client',
            :pkgutil => 'com.airvpn.client'
end
