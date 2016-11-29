cask 'coreos' do
  version '1.5.1'
  sha256 '6f66821ec58451d7d9fb564082b7f33d1e2f1c3bad88869743c6952f7887fe33'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '734477a5e9f3742f55025f570fc394aaf93d96f7f4ce487ac1563aa661003223'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'

  depends_on cask: 'corectl-app'

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
