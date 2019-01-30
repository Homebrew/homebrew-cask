cask 'react-native-debugger' do
  version '0.8.3'
  sha256 'e4e62f9bd5528eef94ac8d6725f0ceffe4373f8c3e1c861ba09d7999d9a639b7'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
