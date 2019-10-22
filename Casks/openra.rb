cask 'openra' do
  version '20190314'
  sha256 '47991698799dfc15e65641317293fa5503efbe02703aa8c570b838cfc3649693'

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
