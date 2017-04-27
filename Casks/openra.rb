cask 'openra' do
  version '20170421'
  sha256 '4b90257e4a0687a8ae3cf5c1ea257df8df9aad382d94e9cf28d6b5d39d0c89e2'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: '5523815bd7c5e8ddc7c256ef3452d0ff6922996ebb4d8520b91f8d5f2582a576'
  name 'OpenRA'
  homepage 'http://www.openra.net/'

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
