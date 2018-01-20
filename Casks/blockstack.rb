cask 'blockstack' do
  version '0.21.6'
  sha256 'ae9ce2374c7a0886b8214815eee9d2382304b692e0a3b4609fc341b737c63dc4'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: 'b63f24f03e19d735c78b0b8b08ff3d475e6e16905a2c33cb745f66d35f050f89'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
