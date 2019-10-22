cask 'ipfs' do
  version '0.9.6'
  sha256 '4c5a1310f13b5b450f08822b6a028bc05d9b1466c87eb72ff5adf2eeb381f842'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
