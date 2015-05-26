cask :v1 => 'strongvpn-client' do
  version '1.1.6'
  sha256 '9ae2ffa6d72dbf641138fcb5e85bddde227fd0d44bb4e6a758a45e4fd4d7dc34'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          :sha256 => '4d1440058cd3a699e61c75312b34dc9871f7614eac1dc0e5386eb2fd4eeae7b7'
  name 'StrongVPN Client'
  homepage 'http://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN Client.app'
end
