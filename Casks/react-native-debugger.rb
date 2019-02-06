cask 'react-native-debugger' do
  version '0.9.3'
  sha256 'b26b1d48810de0e43a146e5aca131881767ffc7a70ab35b1c9e39c0e02f50939'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
