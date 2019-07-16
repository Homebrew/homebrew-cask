cask 'react-native-debugger' do
  version '0.9.10'
  sha256 '7221f1d8e05a1e2bd2aa4389c119bb60ff33bed65b492e8ebc4d66edb76ce296'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
