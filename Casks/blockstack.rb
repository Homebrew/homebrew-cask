cask 'blockstack' do
  version '0.26.2'
  sha256 'e9d35f26ed6e5a5f3793b3886c73153684a37293f835e6d1b5e871c0cfcdf167'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '4ea0071e37bd7ab29f5cb66a572e30ff6c9b3b04045f333d506b8445655cf116'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
