cask 'react-native-debugger' do
  version '0.9.8'
  sha256 'c4b10ef4cc5a28b3e9257e39a74e63da59a614abd9771d2f6b2f28704572a518'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
