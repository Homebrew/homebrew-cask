cask 'ipfs' do
  version '0.7.2'
  sha256 '7eb037d3f6c3a27a4b1ac1657cb0127e141e15d2f4509f0fde1450727e8ad4b6'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
