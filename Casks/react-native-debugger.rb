cask 'react-native-debugger' do
  version '0.8.2'
  sha256 'cd6cb49f3b59a08906585e31bad909f55650e252832a7753a3003e1e17934f53'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
