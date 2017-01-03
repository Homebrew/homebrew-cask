cask 'jet' do
  version '1.15.0'
  sha256 '143f95d5e0596710a169b38139b2ba993279609ae3886cbfb19501cbfcc6303f'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
