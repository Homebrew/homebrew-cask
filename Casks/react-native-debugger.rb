cask 'react-native-debugger' do
  version '0.7.16'
  sha256 '5bf3559c03f3732c5e517a9b70554876bbfd757e0845d8cdebd6201cf240dff0'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '32ad14050291de516d773d966b4ef65cbef87d899d2d01fec966b0785bb94f5b'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
