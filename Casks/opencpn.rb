cask 'opencpn' do
  version '4.8.6'
  sha256 'ee4facabc803843cb3f0bc869643f034d2419e1e89ce25fce6e0e1052c1ca521'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
