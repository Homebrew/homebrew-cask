cask "react-native-debugger" do
  version "0.13.0"
  sha256 "81d13ce362bf34ab2320fdeef22a4b97176f726cfb7ed00e5999b9ed289c11b4"

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
