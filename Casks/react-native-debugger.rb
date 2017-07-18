cask 'react-native-debugger' do
  version '0.7.3'
  sha256 '3c2ce95623f38bfb118e9741857524ff0c2fe5350d66544bd8c721b6bbe39f97'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'ccb776a266856c26e31f854fcad293b17ad441beb03cc6ae7b421228a71adc3f'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
