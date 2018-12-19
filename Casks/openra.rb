cask 'openra' do
  version '20181215'
  sha256 'b4fb884d0dda9be6b94127332af00dee7f11c2a5046478eb12ba2c370aad983b'

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
