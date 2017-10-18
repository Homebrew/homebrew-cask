cask 'react-native-debugger' do
  version '0.7.12'
  sha256 'ceebe1de7adee9bec082e4716c6fc1a170e23e16387613aea7bca285b4f937c8'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'fdeb6bbdc1452ab26b49af7d2cbd6ae5441ab916ac8fbdf05f4b9daa2f4e20b7'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
