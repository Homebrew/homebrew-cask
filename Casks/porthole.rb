cask 'porthole' do
  version '1.7.10'
  sha256 '63b6d2a0a51a906413238770d1cd00180cc0105e210f44eb6131c2cbee298686'

  # getporthole.com was verified as official when first introduced to the cask
  url 'https://download.getporthole.com/Porthole-latest.zip'
  appcast 'https://update.getporthole.com/appcast.rss'
  name 'Porthole'
  homepage 'https://www.dangercove.com/porthole/'

  app 'Porthole.app'
end
