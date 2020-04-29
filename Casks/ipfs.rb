cask 'ipfs' do
  version '0.11.1'
  sha256 '494cd86647e13fb3bf8f4886c210e1fc609d7a9d555b28d4c273665ca4bcae9b'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
