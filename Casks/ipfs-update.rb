cask 'ipfs-update' do
  version '1.5.2'
  sha256 '9f7017fe7453fd42b35a52d631ba4765fdc0e6d0cd890f0eb1a12a64f086c922'

  url "https://dist.ipfs.io/ipfs-update/v1.5.2/ipfs-update_v#{version}_darwin-amd64.tar.gz"
  name 'ipfs-update'
  homepage 'https://dist.ipfs.io/#ipfs-update'

  binary 'ipfs-update/ipfs-update'
end
