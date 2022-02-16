cask "react-native-debugger" do
  version "0.12.1"
  sha256 "cb7d184a495e2a45cc2dc02730f828a552e45d8328df1c7a229f0ffa7fed8106"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-universal.zip"
  name "React Native Debugger"
  desc "Standalone app for debugging React Native apps"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"

  zap trash: [
    "~/Library/Preferences/com.electron.react-native-debugger.plist",
    "~/Library/Saved Application State/com.electron.react-native-debugger.savedState",
  ]
end
