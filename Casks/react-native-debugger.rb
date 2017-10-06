cask 'react-native-debugger' do
  version '0.7.9'
  sha256 'ba341e302eb175c3bb7bd5bca8d7eba541d0ed84fda9a031743feea83365d826'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '2e282f01373db67bcb426bc2f6ce7014f68bf2a955ae6086de9551cf6da43b7d'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
