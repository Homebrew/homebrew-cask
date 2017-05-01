cask 'react-native-debugger' do
  version '0.6.4'
  sha256 'bfa93efdcb8af5d17886aa3276d29bdc3e4dcf4e62af64d3d9f60a0a87460687'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '46ea6b82282db961d60cbe3dde5d809ac02e4bf2cc84802d360482b6308c0126'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
