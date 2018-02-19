cask 'openra' do
  version '20180218'
  sha256 '0e2aa85c641f27c14fc427f25b3b3a7055e3cf8e3f653e69291dc329f6620b35'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: 'd2afb0e4e9686d5529a22895fef95900a5ccddeeaa1930ec6e9a0d3ed1a1939c'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA - Dune 2000.app'
  app 'OpenRA - Red Alert.app'
  app 'OpenRA - Tiberian Dawn.app'
end
