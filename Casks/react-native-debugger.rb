cask 'react-native-debugger' do
  version '0.6.6'
  sha256 'c50e9f15fb4610ae7fcbff0cabb221af3b767656f54e29e0b40f0956c53759de'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '2a5f43f42089475203f240a1f3272a7a671a60d6ebc72fdc14ec4048874fee0e'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
