cask 'openra' do
  version '20171014'
  sha256 '172a11826c5806c6ce698fc8c13f65c26d168148a6872887754918e8b8b97eff'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/archive/release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: '375c84af42e7d70986d9e81a0556944fbbc9fbc3cc9f8ba5605f67522b2a24b4'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
