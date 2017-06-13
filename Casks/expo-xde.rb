cask 'expo-xde' do
  version :latest
  sha256 :no_check

  # exponentjs.com was verified as official when first introduced to the cask
  url 'https://xde-updates.exponentjs.com/download/mac'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
