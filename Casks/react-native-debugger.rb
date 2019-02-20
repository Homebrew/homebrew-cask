cask 'react-native-debugger' do
  version '0.9.7'
  sha256 'acbb6cb8b41d8ca8b1d86903732c711569914076d08ca88041c53913636a9574'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
