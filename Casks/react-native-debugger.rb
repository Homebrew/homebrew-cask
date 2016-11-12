cask 'react-native-debugger' do
  version '0.5.1'
  sha256 'ebed709fe30c0b5b82abf20ce6dd166e1dcf86ef9bf98b4813634a6ad3b6feed'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '85afc9facd30a1b1908a1f9997f5a865755990ec027beca22e777499e272a38c'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
