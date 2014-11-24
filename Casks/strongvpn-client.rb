cask :v1 => 'strongvpn-client' do
  version '1.1.4'
  sha256 '7058980325ba50fde4b3bbb2f21d7b5e4d49b57ce87eaaae08aef47063522af4'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          :sha256 => 'd3d2168154069fbcd2ca42eb7167cf9b411230d3c58ac4367b46139011c0415f'
  homepage 'http://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN Client.app'
end
