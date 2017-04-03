cask 'react-native-debugger' do
  version '0.6.3'
  sha256 'a4d740f17451c5a8b0c201c9e0f704c5fbab27e118ade0954acfd765b9b00d22'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'cf25e5bbe4e11ba4bc11f31cd8a02b4ea47e6b68d5288d2fc3b2329b53e9e915'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
