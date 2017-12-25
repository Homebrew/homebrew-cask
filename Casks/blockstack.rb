cask 'blockstack' do
  version '0.21.5'
  sha256 '43dd48ed2dc9e198182b4ecc861b901c8575392a37f1f125aa8418cba391bf20'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: 'df341c1e52a89a14d899dd7d39cddc5e5f92b5a02cdeb60e892a1b0986b64ef4'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
