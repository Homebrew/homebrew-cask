cask 'react-native-debugger' do
  version '0.7.1'
  sha256 'aaa8201a76ae728cffb96daaf6b112ab35388608b19a2f9f81aedda42cf9bb94'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '4a53752138c3c47eaf1ae398d8e83f3dda9e3fba5840ab4e563b6d3601522b2d'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
