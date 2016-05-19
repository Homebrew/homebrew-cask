cask 'coreos' do
  version '1.2.8'
  sha256 '846c2b7b96ec897b603383051e36bf4b06dc95f07a5cdbd9c1e429f04f82a4f4'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '74f6ba0620644f379f489e50c1c83a4c3b5e9946ec87c91c0d27e4b6269847c8'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
