cask 'react-native-debugger' do
  version '0.5.6'
  sha256 '9703b86bc46b386c1dc50471bc1b4cb0b5814260a6961a61f81049529fb04eaa'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '3be547a994a93e5c18cd81f9a22aec23884a9936e85648dcb5e87346b38a0961'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
