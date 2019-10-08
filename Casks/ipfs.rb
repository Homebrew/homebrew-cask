cask 'ipfs' do
  version '0.9.5'
  sha256 'c1803d6a8ae176764293632e9368cdef4689e2ef6f9a5ca302bc7bdada019129'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
