cask 'opencpn' do
  version '4.8.0'
  sha256 '86f8322fc8f9065e9696f6c0b38ed1cdc63543faeaf133c8cd39f0d66e245f91'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom',
          checkpoint: 'a6094ed534befa30a116f883cb06e4052d88a257c2043238ebc22377632933df'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
