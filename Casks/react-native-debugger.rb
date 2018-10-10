cask 'react-native-debugger' do
  version '0.8.1'
  sha256 'f2202ffcfbd5dfa44727b01bb54df0c9a4a69f62f757d7751de0dc62416e22e0'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
