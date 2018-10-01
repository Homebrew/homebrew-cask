cask 'react-native-debugger' do
  version '0.8.0'
  sha256 '274a351f8b1eaaacc822845a333a0fb716e425fc455b2377b6de93a88f1662d4'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
