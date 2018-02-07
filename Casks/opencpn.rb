cask 'opencpn' do
  version '4.8.2'
  sha256 '04a4bd7c7dd78fa2462abc33968d5fa62d268f10a4cb1f929c19eaad863084a5'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom',
          checkpoint: '8b0d9d11476dcd28ab088ed9385fef75cd22ed5eed0cff4868453ef9fd3978ae'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
