cask 'ipfs' do
  version '0.7.0'
  sha256 '4cce1d57191abbbdee7f499e1a056d335eaa1861f0f1c16b227975c4f31772b7'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
