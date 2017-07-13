cask 'react-native-debugger' do
  version '0.7.2'
  sha256 '01c41ab5e558eeb5cf4bd56455b16608d121389a9e5182b06fa8774cb9cd4506'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '79ee8eb03c6a05cf89e3daf36121c7209bca76f29b1860949d31b49528056e73'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
