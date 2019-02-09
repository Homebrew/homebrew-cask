cask 'react-native-debugger' do
  version '0.9.4'
  sha256 '20a1768de71b5dad0a08f434a65606bd7bf1a419a8293c31d024c646470fb5c4'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
