cask 'react-native-debugger' do
  version '0.3.0'
  sha256 '7085a301aa8619345f09875ef0ecf94185a05cc90445058eff01d53160208cf8'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '9f5dd7dd68d340ee18b42885743d594de5a97d7c28237b9dfe74850922018e57'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'
  license :mit

  app 'React Native Debugger.app'
end
