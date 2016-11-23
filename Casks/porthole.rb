cask 'porthole' do
  version '1.7.9'
  sha256 '805847cfec098073feabccd7f65f448c27c3db14574ac4a94b823458e525ebe3'

  # download.getporthole.com/ was verified as official when first introduced to the cask
  url 'https://download.getporthole.com/Porthole-latest.zip'
  name 'Porthole'
  homepage 'https://www.dangercove.com/porthole/'

  app 'Porthole.app'
end
