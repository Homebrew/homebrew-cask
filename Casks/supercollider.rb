cask 'supercollider' do
  version '3.9.1'
  sha256 '5b13cdc6d1fe9a6a947406fb22852d72f1ec623367f1cea0065b63ed86d5bdde'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: 'e59593baaa6ede02f4abfc079e0e144b49fad2b103acc5f332385be6626b3d1e'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
