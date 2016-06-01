cask 'react-native-debugger' do
  version '0.1.0'
  sha256 'ef91976656f814f17aefa614eb46c49d1eef4000a365039ef7a1cfef42382538'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.dmg"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '0b27bfd09b5b0bb92385a256b97533999b87add5c491b413c53e234fc4344b68'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'
  license :mit

  app 'React Native Debugger.app'
end
