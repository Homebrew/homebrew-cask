cask 'ipfs' do
  version '0.9.1'
  sha256 '7a0dbabba71f90de55b8da22b8295e5e3b6d9d540b68f50156ce65d98da7e1a9'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
