cask 'coreos-gui' do
  version '1.1.5'
  sha256 'a5f1f3b97458e8317cbbbf39d0c31a7d6abd18ec136b032afa2404221598dbcf'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          :sha256 => '803e6564c8bdcc9fee6326216de865e39bfece0e87d9d38c3b34c4f90382aa06'
  name 'CoreOS GUI'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS GUI.app'
end
