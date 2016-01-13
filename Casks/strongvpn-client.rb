cask 'strongvpn-client' do
  version '1.1.8'
  sha256 '060b0a22a180866df18ba8771b3110d8e790ede7dfb980253bbfbc4af8409b88'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          :checkpoint => '611933221c760561c624def47f1e03f8f9ba708df52dd64726667a1aff0b4985'
  name 'StrongVPN Client'
  homepage 'https://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN Client.app'
end
