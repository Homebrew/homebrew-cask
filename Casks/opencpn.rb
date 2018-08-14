cask 'opencpn' do
  version '4.8.4'
  sha256 'bf50048c0b304cbb109228821dba521c1994f183e07675bb922855224186efa7'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
