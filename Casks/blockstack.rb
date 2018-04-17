cask 'blockstack' do
  version '0.28.0'
  sha256 'ca7c03ab34a7f73d6df8d6247f943fdf06631c1d1566cd99e11562d5583ecb81'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '31928ff4bb3424e7a8001c3e2f2dff7974fca180fca50d2e8bad7d960b04e6d0'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
