cask 'react-native-debugger' do
  version '0.3.1'
  sha256 'aeaf47853d77dac61e46192580e47f3f01f755c7c74ea4f7daa526a3779331df'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'f5e65d8d5f730f832a45e6b228993e15d9512e5afdd40daba0c529ceefa9d566'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'
  license :mit

  app 'React Native Debugger.app'
end
