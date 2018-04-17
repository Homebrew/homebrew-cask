cask 'expo-xde' do
  version '2.24.3'
  sha256 '5cdc6b38f895aebc8dff3e79cffb774812bf55376436b13b784af895df42f8b8'

  # github.com/expo/xde was verified as official when first introduced to the cask
  url "https://github.com/expo/xde/releases/download/v#{version}/xde-#{version}.dmg"
  appcast 'https://github.com/expo/xde/releases.atom',
          checkpoint: '3eab40a287d5070a258e96b4277a2b79f0aeb7e407a2f267d62a4582857753d9'
  name 'Expo Development Environment (XDE)'
  homepage 'https://expo.io/'

  app 'Expo XDE.app'
end
