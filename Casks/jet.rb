cask 'jet' do
  version '1.8.0'
  sha256 'daee486fe08d091611e09e2888938d4845defae9b1e75b4cc87d064881e75a18'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
