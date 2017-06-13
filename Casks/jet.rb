cask 'jet' do
  version '1.18.0'
  sha256 '3f3db078286131bc79b1c62a0c9e1571451d7d6c4465d47b1f6a45787503e136'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
