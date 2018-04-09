cask 'supercollider' do
  version '3.9.3'
  sha256 '84cdad611aca022ff218aff46e92021a334c5bb8e6ac3dbbe0051fe7f57bae07'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: '72ee8bd7b4c3325c616a0eca42db28464b46904434215af74addfcad5f2a19f0'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
