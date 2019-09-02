cask 'angry-ip-scanner' do
  version '3.6.0'
  sha256 '969f92d8c70737c5c3e3bff8379c3d432188ebacd379428b8a49def2ca8fd582'

  # github.com/angryip/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryip/ipscan/releases.atom'
  name 'Angry IP Scanner'
  homepage 'https://angryip.org/'

  app 'Angry IP Scanner.app'
end
