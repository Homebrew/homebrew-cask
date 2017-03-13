cask 'airvpn' do
  version '2.10'
  sha256 '2ab80137f9a80b0c8dcd549c56b66ca74c8aa6fd03156f6d665f18da949ce055'

  url "https://airvpn.org/eddie/download/?platform=osx&arch=x64&version=#{version}&format=installer.pkg"
  name 'Air VPN'
  homepage 'https://airvpn.org/macosx/'

  pkg "airvpn--#{version}.pkg"
  binary '/Applications/AirVPN.app/Contents/MacOS/AirVPN'

  uninstall quit:    'com.airvpn.client',
            pkgutil: 'com.airvpn.client'
end
