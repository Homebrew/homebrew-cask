cask 'blockstack' do
  version '0.30.1'
  sha256 '1539b2342d9e4cc4dd6a925e0520a2b941920aa6472c55e64654cc1a5b6b846b'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
