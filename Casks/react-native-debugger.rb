cask 'react-native-debugger' do
  version '0.7.0'
  sha256 'fa079f63f505ad5269b2a252766b79c29a6a07483a418f12fd72f8d9cffb7056'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '80d5f23cadbce885d32ef01b06889ad9e1ef5febb922491562fdf8aee0ce5f9e'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
