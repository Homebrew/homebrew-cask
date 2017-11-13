cask 'blockstack' do
  version '0.21.1'
  sha256 'c04c53fb31a66d9682374682961c89411db85d1e019942a3e8f930a09e00ed1c'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '324dc2d1ab7a4dd64c003150f45cd7585ad6cfe479d4b04a4d502203b1cfca7a'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
