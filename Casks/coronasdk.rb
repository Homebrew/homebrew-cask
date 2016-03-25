cask 'coronasdk' do
  version '2016.2830'
  sha256 'f90837a24e378c90300a32aaef9440bce904a491780c919ddc9dec22f3699aee'

  url "https://developer.coronalabs.com/sites/default/files/CoronaSDK-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/products/corona-sdk/'
  license :gratis

  suite 'CoronaSDK'
end
