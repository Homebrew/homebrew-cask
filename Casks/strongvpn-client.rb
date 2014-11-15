cask :v1 => 'strongvpn-client' do
  version '1.0.4'
  sha256 'cacf4f7a94b1601bae2cf19fe94b6dbae827ed531e05ff0f91723aea5b3845b9'

  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.dmg"
  appcast 'https://colomovers.com/mac.xml',
          :sha256 => 'd3d2168154069fbcd2ca42eb7167cf9b411230d3c58ac4367b46139011c0415f'
  homepage 'http://strongvpn.com/vpnclient.shtml'
  license :unknown

  app 'StrongVPN Client.app'
end
