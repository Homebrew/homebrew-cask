cask "react-native-debugger" do
  version "0.11.6"
  sha256 "3888b4f36401c814e9cf182363d8b1ca21d4b8a055d22c87ada3985dd25b4c0b"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast "https://github.com/jhen0409/react-native-debugger/releases.atom"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
