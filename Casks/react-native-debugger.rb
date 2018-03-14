cask 'react-native-debugger' do
  version '0.7.14'
  sha256 '89b380b8f848d2e4e79f3781c396df39abd1d40268c6863cbee57446fc6d2651'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'f207e16517f5d998e2ec29da54d8f2ba8b068a27ea4203aaedb3e7873c1a3fc8'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
