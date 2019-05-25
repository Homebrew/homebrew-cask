cask 'ipfs' do
  version '0.7.3'
  sha256 'b11c8c84508ba75ba09bea6eebff5eb1877344396aae81c84f522d194d9469da'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
