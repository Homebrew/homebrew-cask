cask 'react-native-debugger' do
  version '0.11.0'
  sha256 '0ab24b4fe492c9a711afa306393581e680b396f73f4615318a9772e9981534be'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
