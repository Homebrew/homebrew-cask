cask 'expo-xde' do
  version '2.22.1'
  sha256 '0a16308df67baa00538898f9747056ca6b2f59f10796d3244ec547c78afe8c0d'

  # github.com/expo/xde was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast 'https://github.com/expo/xde/releases.atom',
          checkpoint: '7e609f8013c154addf4b2ab5d4fcc8914c8c48f6c7e8104c58e9afb6addd823d'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
