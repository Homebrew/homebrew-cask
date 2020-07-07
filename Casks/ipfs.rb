cask 'ipfs' do
  version '0.12.1'
  sha256 '8070c60c99994579f87324df10c8a8636595bb46cb88aa2765c6bd7230b2c458'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  auto_updates true

  app 'IPFS Desktop.app'
end
