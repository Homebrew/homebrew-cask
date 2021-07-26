cask "react-native-debugger" do
  version "0.12.0"
  sha256 "370bd7d511b15362c544051e5e3e04c86201182ded22c51a082437db9e92d024"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  name "React Native Debugger"
  desc "Standalone app for debugging React Native apps"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
