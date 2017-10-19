cask 'openra' do
  version '20171014'
  sha256 'f6896f9f18c215ca801a69649fc9f46037a9492b67b03bd04f40fb4c4f408cf2'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.dmg"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: '375c84af42e7d70986d9e81a0556944fbbc9fbc3cc9f8ba5605f67522b2a24b4'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA - Dune 2000.app'
  app 'OpenRA - Red Alert.app'
  app 'OpenRA - Tiberian Dawn.app'
end
