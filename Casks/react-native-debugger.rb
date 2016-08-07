cask 'react-native-debugger' do
  version '0.4.0'
  sha256 '6ff345da8b915cebcf3696cc484624b959373c97a535fc7626367e8c74a2b0b3'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'c98d7a18b9b64a27fbbaebeb48cb1bdf8bc302be9b3c7a36d298793f1c6198b6'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'
  license :mit

  app 'React Native Debugger.app'
end
