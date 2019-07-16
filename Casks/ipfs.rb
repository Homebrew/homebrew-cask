cask 'ipfs' do
  version '0.8.0'
  sha256 'a1bd934b4f3b4f796b5fbd384a9d552b550d9502981ca1ad167fadcf03d6cffe'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
