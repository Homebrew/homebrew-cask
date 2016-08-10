cask 'coreos' do
  version '1.4.9'
  sha256 'c0ad06ebee3500ed7d5ad594c2017298e4717f3816f88440f8a0577e07429bab'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '13b8920979514ce9e31b2716f1f211ee14329f63c995f0951940f45337d3aa9d'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  depends_on cask: 'corectl'

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
