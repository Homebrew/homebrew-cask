cask 'react-native-debugger' do
  version '0.7.8'
  sha256 '04db2558d22d5624e4fff8e36727e5f79ff6efd436e3ee5fdc73c244d08d9823'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '14455f6b88a69b3c33f14eeed43db0f003bbe5c80288fd5780e774a4a16de5ac'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
