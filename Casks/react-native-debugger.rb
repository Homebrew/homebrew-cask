cask 'react-native-debugger' do
  version '0.7.5'
  sha256 '95cd33cdf05fdebff20c4a08dc96f8215bfdd3672bdc4d44edbdcfd6fd7f94c4'

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast 'https://github.com/jhen0409/react-native-debugger/releases.atom',
          checkpoint: '00601e001c399097ee87469ab2fdad5894991db157e048b91d1aa34fbb8e7bd1'
  name 'React Native Debugger'
  homepage 'https://github.com/jhen0409/react-native-debugger'

  app 'React Native Debugger.app'
end
