cask 'expo-xde' do
  version '2.20.1'
  sha256 '53309014713ea1064499891767b1137d0d0202afc23c56f7fd513fe6284e7b1e'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
