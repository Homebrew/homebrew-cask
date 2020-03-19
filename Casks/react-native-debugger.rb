cask 'react-native-debugger' do
  version '0.10.7'
  sha256 '564fe63d76f6d6cbfab1a879537ce537f7538921d98bd0b26adb1f562e0b0d8f'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
