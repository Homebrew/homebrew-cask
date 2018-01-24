cask 'blockstack' do
  version '0.22.1'
  sha256 '0279e8b2b558e943d3a479e91e208af5445abe80689c635bced3785dc88ed8fa'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '1da1a7eb8f65e5d9573519cc5d728afe6f63f2d61686605031450e80414adee9'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
