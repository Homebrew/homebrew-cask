cask 'coreos' do
  version '1.2.9'
  sha256 '3d59b7af835f2d643a0d0ec56d21be1d4b0822afb5be3f8c5a3bb86ffa71bf03'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '4702a0df004b01e142f337970ce12439b3558866923bdbb60a64e900909ea1e0'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end
