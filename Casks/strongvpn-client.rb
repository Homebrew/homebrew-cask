cask 'strongvpn-client' do
  version '1.1.8'
  sha256 '060b0a22a180866df18ba8771b3110d8e790ede7dfb980253bbfbc4af8409b88'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          :sha256 => '21a0af23d360451292889ddefe34f3b35053a71bff16ac2d4fe3a4a7d85a95ec'
  name 'StrongVPN Client'
  homepage 'https://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN Client.app'
end
