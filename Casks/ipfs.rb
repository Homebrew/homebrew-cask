cask 'ipfs' do
  version '0.10.4'
  sha256 'aaa391eecd62a9f13f2f4ac35869602bbc8b6d98af867e4ff4b6084b52173dc3'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
