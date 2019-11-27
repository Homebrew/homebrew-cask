cask 'react-native-debugger' do
  version '0.10.5'
  sha256 '7aa682fa88a4cde9f621d6eadfa9fa435dcdcc42db0eaf9aa0a5d7b06c840f76'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
