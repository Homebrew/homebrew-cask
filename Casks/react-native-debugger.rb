cask 'react-native-debugger' do
  version '0.10.1'
  sha256 '2a92539861697bae94f0d067f1702a8162be9e056c0eae0627c337a50fdd90c7'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
