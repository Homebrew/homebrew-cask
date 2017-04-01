cask 'supercollider' do
  version '3.8.0'
  sha256 '3ba38b061076004e4f567541059aa4633dfad537fd149dc64360584744191a3f'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-OSX.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: '6efb014de5708b53ce5bf627ad9112726ac3d4acd378ac296f76b42ecac79d0f'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
