cask 'react-native-debugger' do
  version '0.7.7'
  sha256 '89f938869e88e6d858d7461cf70c1c7f85eb60305fce0afa9f6cc4d2f52c97f8'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'dae5ff699885587929e724a09f3c3e27298490759106e7f8b3cd0fc9969fbe34'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
