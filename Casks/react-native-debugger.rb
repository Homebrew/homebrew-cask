cask 'react-native-debugger' do
  version '0.10.2'
  sha256 '6c2facfe67421653a98abb34a7dfe6aca3c36755cb80b20469bc0a075e50a847'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
