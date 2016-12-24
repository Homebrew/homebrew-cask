cask 'jet' do
  version '1.14.1'
  sha256 '7665d7c62b9e89e42a733d8ef1567138b94df196947b73e7356c6b5252351fca'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
