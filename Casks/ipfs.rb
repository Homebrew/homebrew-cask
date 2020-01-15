cask 'ipfs' do
  version '0.10.2'
  sha256 '72d896a4e81ff353946214ee7ed2853f2aa515f86f4de95e6ca6e448ee9d21a7'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
