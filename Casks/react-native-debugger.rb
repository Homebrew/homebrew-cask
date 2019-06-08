cask 'react-native-debugger' do
  version '0.9.9'
  sha256 'ea4f386f92648bf6e007630a5834af2add47f3688ad52d086b54ea2f4700eb53'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
