cask 'react-native-debugger' do
  version '0.6.1'
  sha256 '4736a41eeddba50f6d3d07cf92a9be4df6aa1cc419fff84bcb4f88fe69f7785f'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '484994bcb382accf64d4898d7793cba5722aef9fd5e366e4abade3e9ad7ede26'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
