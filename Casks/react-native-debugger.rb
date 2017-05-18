cask 'react-native-debugger' do
  version '0.6.5'
  sha256 '6ff60327e55fe77ca9018b0a7b6e32cc693e8073f59ef263e227e98ad341df7d'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '78ca7ed23b171f4a57c69a654c60195c6df0b73172b1d71b7f68bf913e782b4d'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
