cask 'supercollider' do
  version '3.8.0'
  sha256 '3ba38b061076004e4f567541059aa4633dfad537fd149dc64360584744191a3f'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-OSX.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: '57e6bb2114243621c90a5c772d05d933bb3139e54fbfbd9bef5bba1df0e9f5ce'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
