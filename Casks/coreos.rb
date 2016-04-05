cask 'coreos' do
  version '1.2.3'
  sha256 '493c9963bff1f8601fb93e583893dcee653072cc13c8a1688196781e1b303f4e'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '6aad70ea992600e746a2e13980decb8726e68998702cc15ad4195708fdec5a04'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'
end
