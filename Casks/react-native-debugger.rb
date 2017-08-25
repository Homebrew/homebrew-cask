cask 'react-native-debugger' do
  version '0.7.6'
  sha256 '52cad843ba17d029bf05e6d0a5502b5b0e690932eddfcc41e0d4da670c2beb9c'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '489161865a1c3b0f8eb8d536743df83fc80e117b4a9670e82ede3c5fb12f75ac'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
