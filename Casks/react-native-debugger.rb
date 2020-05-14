cask 'react-native-debugger' do
  version '0.11.3'
  sha256 '6e17c48fe0b5cb57a7bbe19d037dd43d298c5215579b9c33a8f073f78d5088b2'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
