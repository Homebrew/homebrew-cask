cask 'opencpn' do
  version '4.8.8'
  sha256 'ef0134e0cbfdf6c4e6ad5e4c08ee3d720506676fb6228d6174db1a4b5505651f'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  app 'OpenCPN.app'
end
