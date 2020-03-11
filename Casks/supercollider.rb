cask 'supercollider' do
  version '3.11.0'
  sha256 '89631b3f4685b7b49fb10358feff5e255ee86f1c1c1be478d9d199c4e158cb05'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-signed.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
