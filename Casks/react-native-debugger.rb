cask 'react-native-debugger' do
  version '0.5.4'
  sha256 'f4ed5d68f133a6db0ea80512136a3ed9b0bbebdad12ea94e35193b693fe66ed1'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '4c2817d0ea75ea72a3716cb4ead3ea890a201e2958099c997d611e7a529d40e8'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
