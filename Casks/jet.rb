cask 'jet' do
  version '1.19.3'
  sha256 '355c4073cd6bf5f5dadf779749cba472ab09aaccbebef1379bcc2747f9c423d4'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/builds-and-configuration/cli/'

  binary 'jet'
end
