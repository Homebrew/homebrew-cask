cask 'react-native-debugger' do
  version '0.7.4'
  sha256 'c30941b683601dba748db4573f82e4eeca42bc227d43e88220bb2038a6630036'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'c2b90925ea5afce8f407d68c3793b20b7e6b90787414c3c0acb4264bd4f5b59d'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
