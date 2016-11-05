cask 'react-native-debugger' do
  version '0.5.0'
  sha256 '34b14fa981289e0d40baa7e4dc2270dbc602cfdde5bfd89bc518ae68522be97d'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'b055df86700a8960c42aa5b13bc5aeb5399462c06fd26b81c69c9698ad1c3cb9'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
