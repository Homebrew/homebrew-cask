cask 'expo-xde' do
  version '2.21.0'
  sha256 '52e5f64d130a04fcaeebe50b9f6eca05a5eae01e09f95faa48beac3771eb72a1'

  # github.com/expo/xde was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast 'https://github.com/expo/xde/releases.atom',
          checkpoint: '438612414e5882774c8b0b0c4580d50f7bd9623bad1b5f4e64668c714ae061c9'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
