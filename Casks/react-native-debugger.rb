cask 'react-native-debugger' do
  version '0.10.3'
  sha256 'a1c9c3067968e0261af8106f7f056edf895debba720301f2ffcc8c1a8a16a1f2'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
