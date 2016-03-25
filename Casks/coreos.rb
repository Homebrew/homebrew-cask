cask 'coreos' do
  version '1.2.2'
  sha256 '152426f6cd6c46b298c2560a96a85328441de3628685f9a1fc744b6e0ed2baee'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: 'c4f07738018b304dcd4d138b413564a83c35a0e3f5efa4faa041086985c5d2d0'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
