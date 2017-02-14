cask 'jet' do
  version '1.15.8'
  sha256 'e37c4a88caf127bbc07fe366290dc739b6a58703e1f689517e009b90e1d61df1'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
