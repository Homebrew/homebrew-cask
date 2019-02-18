cask 'react-native-debugger' do
  version '0.9.6'
  sha256 'cc41a83f8c2b9338557e3b97f9f131a4307625d991987a88cdf701add5284e7f'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
