cask 'ipfs' do
  version '0.10.0'
  sha256 '4b08211ff5d07a06487bba001b8f1f50d1ea7abf9ac8beba525b05bc18a65c3b'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
