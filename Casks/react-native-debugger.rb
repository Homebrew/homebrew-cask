cask 'react-native-debugger' do
  version '0.10.0'
  sha256 '921b8e13e130f9cdb97845d20a52acfcbc97ce3bb46fef12bd349f080eb83b29'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
