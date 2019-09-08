cask 'react-native-debugger' do
  version '0.9.13'
  sha256 'eb1fb6ab6ad0af1ad7cfcb6beaa914f0fe180cb887d0d66da4fcac2ea575d3fd'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
