cask 'react-native-debugger' do
  version '0.11.2'
  sha256 '5993924ab73f67eed6f9a8f326f61c7b6c503d24b38fa26f8c521783ee8bcf60'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  auto_updates true

  app 'React Native Debugger.app'
end
