cask "react-native-debugger" do
  version "0.11.9"
  sha256 "6aaabe96215f99e282db56e008b69142204625a4598dd3df393a250c994fba46"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  name "React Native Debugger"
  desc "Standalone app for debugging React Native apps"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
