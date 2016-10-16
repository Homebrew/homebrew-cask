cask 'openra' do
  version '20161015'
  sha256 '9566f0404f03fde70e577eb0407a09fb95272f64c1c98a4cb019ceadf69189ce'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: '9e9f55215e33ba4b0bc688821a2efd1ec5338c784273d2ec891f92527078b88d'
  name 'OpenRA'
  homepage 'http://www.openra.net'

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
