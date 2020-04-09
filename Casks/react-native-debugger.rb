cask 'react-native-debugger' do
  version '0.11.1'
  sha256 'cdfdc5d1821b95b471c3bd5ccdf05a861477e4f36bc859d413956a2658a5737a'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
