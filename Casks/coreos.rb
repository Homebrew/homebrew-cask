cask 'coreos' do
  version '1.2.4'
  sha256 'c25c550d97e20400dec14597f5b9ca4f920b14a232c2afded883514a3fe1721d'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '88c495bbd5b8b1050b7fa793e97f1545b808d632e5eccecbc130492dc6a88b0a'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
