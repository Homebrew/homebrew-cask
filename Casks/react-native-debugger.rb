cask 'react-native-debugger' do
  version '0.10.4'
  sha256 'a0a86ee9bea3fef613b1d7f2fbb63c25349c9cc2bc239f8b859d114edcf9e5b9'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
