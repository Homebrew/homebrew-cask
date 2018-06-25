cask 'expo-xde' do
  version '2.24.4'
  sha256 'bd2d7d7f66bbb44c522a7550671216dc8ea680478c7e09c9f7bcc739b1daa288'

  # github.com/expo/xde was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast 'https://github.com/expo/xde/releases.atom'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
