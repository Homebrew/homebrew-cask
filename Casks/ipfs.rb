cask 'ipfs' do
  version '0.9.2'
  sha256 'b079162f5bda4e21a1db43c1394ae1ccb22d06b06201f708e90824eaadf66f3e'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
