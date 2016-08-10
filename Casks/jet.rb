cask 'jet' do
  version '1.9.14'
  sha256 '8ea9ed78b701e87b313305dd6a35ee6e9351c5abf4e01c843ca4fdbd1f70908b'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
