cask 'react-native-debugger' do
  version '0.5.3'
  sha256 'ba914aa11fef7a7753b5a8a827f13640bdd79935688830be6172586de42af761'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-darwin-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '7ee7d860def972a7602a341e191ca1367fa138c9946427fe219bdf7e542e3807'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
