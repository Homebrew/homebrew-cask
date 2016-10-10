cask 'jet' do
  version '1.12.0'
  sha256 'c0d4aeb21460974aad769d15113a8f51a05dc771f233d484cea0d52e0550e00e'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'

  binary 'jet'
end
