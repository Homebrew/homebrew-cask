cask 'supercollider' do
  version '3.11.0'
  sha256 '549e098f1895d3ae83ce12065b42c34b5cad5b3daebe75bb3002f659d686f04b'

  # github.com/supercollider/supercollider/ was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
