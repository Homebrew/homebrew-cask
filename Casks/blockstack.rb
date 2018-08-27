cask 'blockstack' do
  version '0.32.2'
  sha256 '61784582c2f35a5644a014d4a8a5607c25ca74179127e79fa57be4b7f1cd97bc'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
