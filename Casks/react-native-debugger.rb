cask 'react-native-debugger' do
  version '0.9.1'
  sha256 'af9f7177ca494573ab3cd5e8aa127ec0af079bdafe0b66acfb582cfc653fc142'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
