cask 'react-native-debugger' do
  version '0.7.13'
  sha256 'd90700e91f83e7ef058a9c969303436b283abd38c4350d3b8b713ae6daa4e3d6'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '36ddde5747147c1db9dbeed87f82278039cb8896f7ab79505dd1580c63513d95'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
