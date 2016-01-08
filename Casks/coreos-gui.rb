cask 'coreos-gui' do
  version '1.1.4'
  sha256 'c3db1aa6949ea5d28c559cd0c3185e6fd40ae31f5d5bb290f70f2a8761158e03'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          :sha256 => '55927d94bc026ca8264afa2676799cf363fb3be10f58b7f4e03b561e737eb77d'
  name 'CoreOS GUI'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS GUI.app'
end
