cask 'react-native-debugger' do
  version '0.9.2'
  sha256 'bfd4808b56c9ca20eb366dc61b30e48daa763b09b7ea95ffab86a1cc5d5f2baf'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
