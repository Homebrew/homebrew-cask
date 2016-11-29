cask 'supercollider' do
  version '3.7.1'
  sha256 '35762e7a55b77e954412db0aaf2f0ad08a0f66292429e9bf0c34c61d2156e20f'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-OSX-#{version}.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: '792cf265121b3358432cd35be470055b7fdaa01ad547ef1b3d1618c61c0e689e'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
