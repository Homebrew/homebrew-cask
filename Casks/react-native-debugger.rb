cask 'react-native-debugger' do
  version '0.6.0'
  sha256 '4fac01f0c3ff7390da224ab306363ab91c4fe656a258c6a843cba92f271ca727'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '3a28b0b4d270fe7100784b373192c947867053a8e3ab3db84903a7b69962462c'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
