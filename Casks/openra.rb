cask 'openra' do
  version '20170527'
  sha256 '4c0633512673d5ee2401ccc5cac06ccbe46ad14af002940189f6d4701eee1046'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: 'c1af3e1740e8ad122d60b34ebe8a61f522fa0521f18633174e3087cdcb103b45'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
