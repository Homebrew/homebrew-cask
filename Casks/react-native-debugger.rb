cask 'react-native-debugger' do
  version '0.9.11'
  sha256 '8117c05ee669e92c7b52a551021f0d2159722d9efc1770069e0fa38631ce6034'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
