cask 'coreos' do
  version '1.5.0'
  sha256 'd1923f1a734b2ad634f2f7aef4f9fb593041be9529bebc892ef9c824025bd765'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '13b8920979514ce9e31b2716f1f211ee14329f63c995f0951940f45337d3aa9d'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  depends_on cask: 'corectl-app'

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
