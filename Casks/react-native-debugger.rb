cask 'react-native-debugger' do
  version '0.7.19'
  sha256 '15e90555f3a6786f1d36bfef42b1498a6cf187db7468518fbb611cbdd56f07d8'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
