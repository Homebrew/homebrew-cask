cask 'openra' do
  version '20180923'
  sha256 '9f5a0f18dca794f2b94dbd946426c03e24a25467bd41dedf72ed1be83b94e49d'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom'
  name 'OpenRA'
  homepage 'https://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA - Dune 2000.app'
  app 'OpenRA - Red Alert.app'
  app 'OpenRA - Tiberian Dawn.app'
end
