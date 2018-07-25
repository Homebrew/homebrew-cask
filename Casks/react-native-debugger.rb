cask 'react-native-debugger' do
  version '0.7.20'
  sha256 'aaa66f12b565247f0956e43241a051634115702e0475a68962545afe74c160ff'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
