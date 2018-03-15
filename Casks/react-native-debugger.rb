cask 'react-native-debugger' do
  version '0.7.15'
  sha256 '3926eda0f5afb395119fa7812846b17de50aec5012aec779d0e8594f06b8140c'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '3732307f9f30034db7b611e8b3b7827ef32453bc7b32767518c4736c5eed4b32'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
