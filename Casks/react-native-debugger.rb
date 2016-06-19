cask 'react-native-debugger' do
  version '0.2.0'
  sha256 'd9179c64bef54ee3223a6dfc02fca3ef7ae2afe1e79d8afc564259feb87038bb'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.dmg"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'e9f41cbb055a8c182778f2b1710b6f7dcffd15afddf1570f1adbe0363a6fc833'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'
  license :mit

  app 'React Native Debugger.app'
end
