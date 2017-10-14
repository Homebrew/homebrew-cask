cask 'react-native-debugger' do
  version '0.7.10'
  sha256 '35b22528297b5ff8a2a3266d7679a9942938409f88c3781809fd5cc569d7c490'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'be66a2d99c185477c54552f622aadbe0651786613a7167832913bd21fe34145c'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
