cask 'opencpn' do
  version '4.8.2'
  sha256 '04a4bd7c7dd78fa2462abc33968d5fa62d268f10a4cb1f929c19eaad863084a5'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom',
          checkpoint: 'a5abe6ccfc54897449fb98fa13f5b7f6f8047dd42505b1513bbac76677d2d6c3'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
