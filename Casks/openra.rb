cask 'openra' do
  version '20161019'
  sha256 '216ed0d307a57b7c7c5d8e304ba227e11548aabfa696247446ada5e9f88e5e00'

  # github.com/OpenRA/OpenRA was verified as official when first introduced to the cask
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: 'da02f72b8d7631c584ba88626c1dc82bec737f2ea0de0d1edb41e6a3ca6b800f'
  name 'OpenRA'
  homepage 'http://www.openra.net'

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
