cask 'jet' do
  version '1.9.3'
  sha256 '9d6a619d77a7c2c021f0239637b4a074ee5e2978c646ede8871cadf5c0e234ef'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
