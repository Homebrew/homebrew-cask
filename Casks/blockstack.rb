cask 'blockstack' do
  version '0.21.0'
  sha256 '00eb8d6f544e321faf7beedd3b0f84beb00237506c0cc8f06890f05416badff4'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '2edeb690cfe6078664007697f7796eed7f7c9e956d8ebefc2a664ea87a9ee526'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
