cask 'openra' do
  version '20180307'
  sha256 'a8cf3a77ff1cccfaa66d973f4abbfa1c30106f39da97ce4d0fd0e823cee86b52'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: 'aec2e5506d2e9ecea45add537487bfbbdbb7ad329ca018f1cdae88a9d7d911b3'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA - Dune 2000.app'
  app 'OpenRA - Red Alert.app'
  app 'OpenRA - Tiberian Dawn.app'
end
