cask 'expo-xde' do
  version '2.22.0'
  sha256 '1ed0228ebfdcb0516a77f2d5a9109be1ae4ec5fae8f5b5f92ea364c4bfea6ac0'

  # github.com/expo/xde was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast 'https://github.com/expo/xde/releases.atom',
          checkpoint: 'd8b3587d746b09616a1e2ec661ba2b508297cd6813ed916dc40459c2465be907'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
