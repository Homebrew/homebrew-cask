cask "react-native-debugger" do
  version "0.14.0"
  sha256 "3be2e2b0d0fdac91f77905bbdcb835316ef8995aec1de91f55838cf0a8da6625"

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
