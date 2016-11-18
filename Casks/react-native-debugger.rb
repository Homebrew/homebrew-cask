cask 'react-native-debugger' do
  version '0.5.2'
  sha256 '585d17398b0eb8f062d90e9b74419278c7d92781ace1599845e767607ad71067'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '58b65acde5dc6b7b2252c2af55329103e927cf71d438796a9e9430d4a487fb3b'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
