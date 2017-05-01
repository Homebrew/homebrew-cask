cask 'coreos' do
  version '1.5.4'
  sha256 '13cdeb14ef6c2efeba3e07f54873b6f6a25fb45c2d7b0e9d758c423b8a82f1a4'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: 'daaa1be178825fa81239cfa825c3ecd1ff24fa0fbe84bd17ab1592bf2d220e3f'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'

  depends_on cask: 'corectl-app'

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
