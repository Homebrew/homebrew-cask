cask 'coreos-gui' do
  version '1.2.0'
  sha256 '93ee0098bf7235780ea8cc160e749edee980a37d7b6a7012b46a67acd10fcaab'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: 'be32adcbbef68fab1273b33eafd03858c4559338885830cf48e8ddb275f699cd'
  name 'CoreOS GUI'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
