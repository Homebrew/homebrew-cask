cask 'jet' do
  version '1.4.0'
  sha256 '49462f143e3948a49c984a91a472089ecb9c14bc2d29415e5c4278e9d9dd4a63'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
