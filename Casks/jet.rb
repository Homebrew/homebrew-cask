cask 'jet' do
  version '1.19.0'
  sha256 '7247424d9dc760efe7faae4f9621c156ea3070a5ffc90bb24819cfb5234aefac'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
