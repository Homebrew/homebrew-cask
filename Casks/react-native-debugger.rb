cask 'react-native-debugger' do
  version '0.7.11'
  sha256 '54ab7583dc5cf316bc285a55143861a8290fb122dcd5ccf80eaa11a9e0e1ccc4'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'e10c588774abead73288a9e437ff91bc08128afbe2f2f519294a0171bec6705c'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
