cask 'react-native-debugger' do
  version '0.5.5'
  sha256 'dad2e7d18cf9d1772066b4ab95c0239cd0674ff0d840adcb21d8117f7c1ea42e'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '6912b0c0cba1498033e7787598a6a348d63e976b5c86804f27a6ff38966a9c91'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
