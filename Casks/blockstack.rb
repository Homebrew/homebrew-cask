cask 'blockstack' do
  version '0.36.1'
  sha256 '571dfb1b5bff71a3bb682b7a294fe19a17065c45fbb272dae5480ec122ddfc31'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
