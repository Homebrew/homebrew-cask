cask 'react-native-debugger' do
  version '0.6.5'
  sha256 '6ff60327e55fe77ca9018b0a7b6e32cc693e8073f59ef263e227e98ad341df7d'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '7e5b7fac1d1f4f0f7b521323ff705d7fe9700a33b598a1e0834dfa6887ffb2f7'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
