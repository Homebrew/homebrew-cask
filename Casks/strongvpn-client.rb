cask :v1 => 'strongvpn-client' do
  version '1.1.6'
  sha256 '839312f789e8ad4ad64091149316e2ae08f8fb9e048fb16cf984f4ded23e91fd'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          :sha256 => '4d1440058cd3a699e61c75312b34dc9871f7614eac1dc0e5386eb2fd4eeae7b7'
  name 'StrongVPN Client'
  homepage 'https://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN Client.app'
end
