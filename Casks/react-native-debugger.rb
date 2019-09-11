cask 'react-native-debugger' do
  version '0.9.14'
  sha256 '2682d4beb40dae35bf69222395f9a1600a4da4cd25119f1277e350c1f6206705'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
