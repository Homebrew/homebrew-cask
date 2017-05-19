cask 'strongvpn-client' do
  version '1.1.8'
  sha256 '060b0a22a180866df18ba8771b3110d8e790ede7dfb980253bbfbc4af8409b88'

  # mirror2.reliablehosting.com/mac was verified as official when first introduced to the cask
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version}.zip"
  appcast 'https://colomovers.com/mac.xml',
          checkpoint: '99ae2d103e02c6e8394a0f1d2c0cc3248c85b04432d2363969ae23e6d3e7ee72'
  name 'StrongVPN'
  homepage 'https://strongvpn.com/setup.html/'

  app 'StrongVPN.app'
end
