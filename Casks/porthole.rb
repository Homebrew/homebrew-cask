cask 'porthole' do
  version :latest
  sha256 :no_check

  # download.getporthole.com/ was verified as official when first introduced to the cask
  url 'https://download.getporthole.com/Porthole-latest.zip'
  name 'Porthole'
  homepage 'https://www.dangercove.com/porthole/'

  app 'Porthole.app'
end
