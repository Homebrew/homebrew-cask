cask 'react-native-debugger' do
  version '0.7.17'
  sha256 'a8545ceea5f0d68bf3f7362b3342f04581037a732014189ceefab1ab6b89a799'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '332920a05393a804893da823a8795d5d816c2632833f9cf928943aece1d18330'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
