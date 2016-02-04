cask 'coreos' do
  version '1.2.1'
  sha256 '120325c8044efb1db8d0ce6adb080bdabee5a5352caf3cbb6345ef10ce3a3bef'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '8c9404b5c3e32bc16c3a8ec955e6dad76e3c1a90b0f28b9ee9cf83daa8e8b7a8'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
