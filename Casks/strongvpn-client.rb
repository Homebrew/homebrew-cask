cask 'strongvpn-client' do
  version '1.1.8'
  sha256 '060b0a22a180866df18ba8771b3110d8e790ede7dfb980253bbfbc4af8409b88'

  # reliablehosting.com is the official download host per the vendor homepage
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          checkpoint: 'd0d7858e5914ce9a1791c7c5719d4d4826bffecfead63c26e99fd44f325af46b'
  name 'StrongVPN'
  homepage 'https://strongvpn.com/vpnclient.shtml'
  license :closed

  app 'StrongVPN.app'
end
