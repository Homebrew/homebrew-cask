cask 'blockstack' do
  version '0.20.1'
  sha256 '0681e64e86a4c04049ee6b4111f621a1b27ed83718b041b653c7fbcda789251f'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: 'c671353defaece55c40b65dbdfca31845cfd9fc3a97128bf3400ce00cb6d4b44'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  app 'Blockstack.app'
end
