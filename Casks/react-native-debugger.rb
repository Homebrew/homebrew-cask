cask 'react-native-debugger' do
  version '0.6.2'
  sha256 '53ed983f2b436c5cc9a179f78d1b196089899e5a5cbec0102bcce594d1a184fa'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'db9cbfe54f83be77d5ac47867bcf23cc09e6abbbc7813d6740c891286536ee53'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
