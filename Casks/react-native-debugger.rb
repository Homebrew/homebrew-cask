cask 'react-native-debugger' do
  version '0.7.18'
  sha256 'bf50aa94863976b0173dee3550eb5ecfab70c70cdd754b22796b2f4375a785d9'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: 'd62793b6f45bcfabc153d9faa0030637e4a55bd2152290de9296c7eac102eec2'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
