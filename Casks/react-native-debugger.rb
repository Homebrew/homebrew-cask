cask 'react-native-debugger' do
  version '0.10.6'
  sha256 '8d5c822e9dfe5060e780bc1f92a70c4f4c40bcffd770516eea7563f307772c9f'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
