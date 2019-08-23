cask 'react-native-debugger' do
  version '0.9.12'
  sha256 '623d5c76ab6b702a3e88136fad0b1510953e2f162a7eeb7294d1b9a66b4897ec'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
