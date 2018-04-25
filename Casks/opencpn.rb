cask 'opencpn' do
  version '4.8.4'
  sha256 'bf50048c0b304cbb109228821dba521c1994f183e07675bb922855224186efa7'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom',
          checkpoint: '159b317704d0bf5502abb5fc4aa73df2c3d4707c3d3db089b5f4d1d3cecebf22'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
